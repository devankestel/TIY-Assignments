require "webrick"
require "erb"
require "./restaurant"

server = WEBrick::HTTPServer.new(:Port => 8000)

server.mount_proc "/home" do |request, response|
  template = ERB.new(File.read "home.html.erb")
  response.body = template.result
end

server.mount_proc "/restaurant" do |request, response|
  @restaurant = Restaurant.all[0]
  template = ERB.new(File.read "restaurant.html.erb")
  response.body = template.result
end

server.mount_proc "/shutdown" do |request, response|
  response.body = "Deuces!"
  server.shutdown
end

server.start