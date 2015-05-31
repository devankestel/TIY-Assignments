post

if request.path =~ /todo\/create/
      @todo = Todo.create(request.query).update(:completed => false)
      response.set_redirect WEBrick::HTTPStatus::MovedPermanently, "/todo"
    end
    if request.path =~ /todo\/(\d+)\/destroy/
      id = $1
      @todo = Todo.find(id).destroy
      response.set_redirect WEBrick::HTTPStatus::MovedPermanently, "/todo"
    end
    if request.path =~ /todo\/(\d+)\/completed/
      id = $1
      @todo = Todo.find(id).toggle!(:completed)
      response.set_redirect WEBrick::HTTPStatus::MovedPermanently, "/todo"
    end   

selectors = {"todos" => {}, "active" => {:completed => false}, "completed" => {:completed => true}, "" => {}} 

selectors.each do |route, query|
  server.mount_proc "/#{route}" do |request, response|
    # populate some instance variables in here
    @todos = Todo.where(query)
    template = ERB.new(File.read "index.html.erb")
    response.body = template.result
  end
end

server.mount_proc "/completed/clear" do |request, response|
    Todo.where(:completed =>true).destroy_all
    @todos = Todo.all
    template = ERB.new(File.read "index.html.erb")
    response.body = template.result
end