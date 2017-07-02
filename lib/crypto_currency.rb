require_relative '../config/environment'

class CryptoCurrency
	attr_accessor :name, :price, :market_cap, :circulating_supply, :volume, :percent_change

	def initialize(data)
		data.each{|key,value| self.send("#{key}=",value)}
	end	


end