car_strings = IO.readlines("mtcars.csv")
car_strings.shift

class Car
  attr_reader :name, :gas_mileage, :n_cylinders, :horsepower, :weight, :quarter_mile_time, :salesman_name

  def initialize(name, gas_mileage, n_cylinders, horsepower, weight, quarter_mile_time)
    @name = name
    @gas_mileage = gas_mileage
    @n_cylinders = n_cylinders
    @horsepower = horsepower
    @weight = weight
    @quarter_mile_time = quarter_mile_time
    
  end
  def land_yacht?
    self.weight > 3.5
  end
  def to_s
    self.salesman_name
  end
  def salesman_name
     @salesman_name = "the"
    if horsepower > 200
      @salesman_name += " powerful"
    end
    if gas_mileage > 25
      @salesman_name += " fuel efficient"
    end
    @salesman_name += (" " + self.name)  
  end
end

cars = car_strings.map do |car_string|
  car_string.gsub!('"','')
  a_car_array = car_string.split(",")
  Car.new(a_car_array[0], a_car_array[1].to_f,
            a_car_array[2].to_i, a_car_array[4].to_i, 
            a_car_array[6].to_f, a_car_array[7].to_f) 
end



puts "Cars:"
puts cars
puts ""
puts "Land Yachts:"
puts cars.select{|car| car.land_yacht?}
puts ""
puts "Fastest land yacht in the whole file:"
puts cars.select{|car| car.land_yacht?}.max_by{|car| car.quarter_mile_time}
cyl_4 = cars.select{|car| (car.n_cylinders == 4)}.max_by{|car| car.gas_mileage}
cyl_6 = cars.select{|car| (car.n_cylinders == 6)}.max_by{|car| car.gas_mileage}
cyl_8 = cars.select{|car| (car.n_cylinders == 8)}.max_by{|car| car.gas_mileage}
array = [cyl_4, cyl_6, cyl_8]
puts ""
puts "The most fuel efficient cars in 4-cyl, 6-cyl and 8-cyl categories, respectively:"
puts array 
