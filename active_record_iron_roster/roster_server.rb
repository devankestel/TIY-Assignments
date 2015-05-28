require "webrick"
require "./person"

server = WEBrick::HTTPServer.new(:Port => 8000)
@students = Person.all

server.mount_proc "/home" do |request, response|
  template = ERB.new(File.read "home.html.erb")
  response.body = template.result
end

server.mount_proc "/new_student_form" do |request, response|
  template = ERB.new(File.read "new_student_form.html.erb")
  response.body = template.result
end

server.mount_proc "/create_student" do |request, response|
  @student = Person.create(request.query)
  template = ERB.new(File.read "student.html.erb")
  response.body = template.result
end

server.mount_proc "/shutdown" do |request, response|
  response.body = "Deuces!"
  server.shutdown
end

server.start