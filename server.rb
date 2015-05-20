require "webrick"
require "erb"

server = WEBrick::HTTPServer.new(:Port=>8000)
car_strings = IO.readlines("car_data.csv")
car_strings.shift

class Car
  attr_reader :manufacturer, :name, :size, :base_price

  def initialize(manufacturer, name, size, base_price)
    @manufacturer = manufacturer
    @name = name
    @size = size
    @base_price = base_price
  end

  def compact?
    size == "Compact"
  end
  def large?
    size == "Large"
  end
  def sporty?
    size == "Sporty"
  end
  def luxury?
    base_price > 30.0
  end
  def mazda?
    manufacturer == "Mazda"
  end
  def pontiac?
    manufacturer == "Pontiac"
  end
end

cars = car_strings.map do |car_string|
  car_string.gsub!('"','')
  a_car_array = car_string.split(",")
  Car.new(a_car_array[1], a_car_array[2], a_car_array[3],
            a_car_array[4].to_f) 
end

server.mount_proc "/home" do |request, response|
  response.body= File.read "home.html"
end 

server.mount_proc "/cars" do |request, response|
  @cars = cars
  template = ERB.new(File.read "template.html.erb")
  response.body = template.result
end

filters = ["compact", "large", "sporty", "luxury", "mazda", "pontiac"]

filters.each do |filter|
  server.mount_proc "/#{filter}" do |request, response|
    filter += "?"
    @cars = cars.select{|car| car.send(filter)}
    template = ERB.new(File.read "template.html.erb")
    response.body = template.result
  end
end

server.mount_proc "/shutdown" do |request, response|
  response.body = "Bye"
  server.shutdown
end

server.start