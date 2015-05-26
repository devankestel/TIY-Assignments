require "json"

class Restaurant
  attr_reader :id, :name, :address, :website, :hours, :prices, :cuisines, :ratings
  def initialize(id, name, address, website, hours, prices, cuisines, ratings)
    @id = id
    @name = name
    @address = address
    @website = website
    @hours = hours
    @prices = prices
    @cuisines = cuisines
    @ratings = ratings
  end
  def self.all
    data = JSON.parse(File.read("restaurants.json")).map{|restaurant|
      Restaurant.new(restaurant["id"], restaurant["name"], restaurant["address"], 
                    restaurant["website"], restaurant["hours"], restaurant["price"], 
                    restaurant["cuisines"], restaurant["ratings"])}
  end
  def self.uniq_cuisines
    cuisines_array = []
    data = Restaurant.all.map{|restaurant| restaurant.cuisines}.flatten.uniq.sort
    #.map{|cuisine| cuisines_array += cuisine}.last.uniq.sort  
    #return cuisines_array.uniq.sort  
  end
  
  def to_s
    name
  end
  
  def weighted_price
    #returns float value of weighted average price for a restaurant instance
    @weighted_price = prices[0]*0.25 + prices[1]*0.75
  end

  def median_rating
    #returns float value of median rating for a restaurant instance
    if(ratings.length % 2 == 0)
      @median_rating = (ratings[ratings.length/2] + ratings[ratings.length/2 - 1])/2.0
    else
      @median_rating = ratings[(ratings.length/2).floor]*1.0
    end
  end
  
  def filename
    #returns restaurant name where spaces are replaced with underscores and all lowercase
    name.gsub(" ", "_").downcase
  end

  def self.cheap
    #returns array of restaurants with weighted price < $15 sorted cheapest to most expensive
    data = Restaurant.all.select{|restaurant| restaurant.weighted_price < 15.0}.sort_by{|restaurant| restaurant.weighted_price}
  end
  def self.expensive
    #returns array of restaurants with weighted price < $15 sorted most expensive to cheapest
    data = Restaurant.all.select{|restaurant| restaurant.weighted_price > 25.0}.sort_by{|restaurant| restaurant.weighted_price}.reverse
  end
  def self.top_rated
    #returns array of restaurants with median rating >= 8.0, sorted from highest to lowest rating
    data = Restaurant.all.select{|restaurant| restaurant.median_rating >= 8.0}.sort_by{|restaurant| restaurant.median_rating}.reverse
  end
  def self.cuisine_filter(cuisine_type)
    #accepts string cuisine_type
    #returns array of restaurants with a specific cuisine type, sorted by median rating from highest to lowest 
    data = Restaurant.all.select{|restaurant| restaurant.cuisines.include?(cuisine_type)}.sort_by{|restaurant| restaurant.median_rating}.reverse
  end
end

#puts "#{Restaurant.top_rated}"
#puts Restaurant.top_rated
#puts Restaurant.all[0].median_rating
#puts Restaurant.cuisine_filter("American (New)")
#puts Restaurant.top_rated
Restaurant.all[0].hours.each do |day, times|
  puts day
  puts times["Open"]
  puts times["Closed"]
end

