require_relative '../config/environment'

class CryptoCurrency
	attr_accessor :name, :price, :market_cap, :circulating_supply, :volume, :percent_change
	@@all = []

	def initialize(data)
		data.each{|key,value| self.send("#{key}=",value)}
		@@all << self if !@@all.include?(self)
	end	

end