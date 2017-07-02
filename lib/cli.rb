require_relative '../config/environment'

class CLI

	def call

		puts "Welcome to CryptoCompare"
		puts "Please enter your fiat currency of interest:"
		base_currency = gets.downcase.chomp

		puts "Please enter your crypto currency of interest:"
		crypto_currency = gets.downcase.chomp

		s = Scraper.new
		s.get_page

		data = s.get_attributes(crypto_currency)

		crypto_currency = CryptoCurrency.new(data)

		puts "-"*20
		puts "Crypto Currency: #{crypto_currency.name}"
		puts "Current Price: #{crypto_currency.price}"
		puts "Market Cap: #{crypto_currency.market_cap}"
		puts "Circulating Supply: #{crypto_currency.circulating_supply}"
		puts "Volume: #{crypto_currency.volume}"
		puts "Percent Change: #{crypto_currency.percent_change}"
		puts "-"*20

	end

end