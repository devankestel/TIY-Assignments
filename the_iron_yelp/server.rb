require "webrick"
require "erb"
require "./restaurant"

@restaurants = Restaurant.all
@categories = Restaurant.uniq_cuisines
@filters = ["top_rated", "cheap", "expensive"]

server = WEBrick::HTTPServer.new(:Port => 8000)

server.mount_proc "/home" do |request, response|
  template = ERB.new(File.read "home.html.erb")
  response.body = template.result
end

server.mount_proc "/restaurants" do |request, response|
  template = ERB.new(File.read "restaurants.html.erb")
  response.body = template.result
end

@categories.each do |category|
  server.mount_proc "/#{category.gsub(" ", "_").downcase}" do |request, response|
    @category = category
    @filtered_restaurants = Restaurant.cuisine_filter(category)
    template = ERB.new(File.read "category.html.erb")
    response.body = template.result
  end
end

@filters.each do |category|
  server.mount_proc "/#{category.gsub(" ", "_").downcase}" do |request, response|
    @category = category
    @filtered_restaurants = Restaurant.send(category)
    template = ERB.new(File.read "category.html.erb")
    response.body = template.result
  end
end


@restaurants.each do |restaurant|
  
  server.mount_proc "/#{restaurant.filename}" do |request, response|
    @restaurant = restaurant
    template = ERB.new(File.read "restaurant.html.erb")
    response.body = template.result
  end
end

server.mount_proc "/shutdown" do |request, response|
  response.body = "Deuces!"
  server.shutdown
end

server.start