require_relative '../config/environment'

class CryptoCurrency
	attr_accessor :name, :price, :market_cap, :circulating_supply, :volume, :percent_change
	@@all = []

	def initialize(data)
		data.each{|key,value| self.send("#{key}=",value)}
		@@all << self if !@@all.include?(self)
	end	

	def self.create_from_collection(crypto_array, data)
		crypto_array.each{|crypto| CryptoCurrency.new(data)}
	end

	def self.all
		@@all
	end

end