require_relative '../config/environment'

class CLI

	def call
		@s = Scraper.new
		@s.get_page

		Money.default_bank = Money::Bank::GoogleCurrency.new

		puts "Welcome to CryptoCompare!"

		set_crypto_currency_and_data
		set_variables
		set_infinite_precision	
		set_base_currency
		display_results
	end

	def set_crypto_currency_and_data
		puts "Please enter your crypto currency of interest (e.g., bitcoin, ethereum, etc.):"
		@crypto_currency = gets.downcase.chomp
		@data = @s.get_attributes(@crypto_currency)

		if @data["price"] == ""
			puts "No such crypto currency found."
			set_crypto_currency_and_data
		end
	end

	def set_variables
		@crypto_currency = CryptoCurrency.new(@data)
		@price = Money.new("#{@crypto_currency.price}".delete("$").to_f*100, "USD")
		@cap = Money.new("#{@crypto_currency.market_cap}".delete("$").to_f*100, "USD")
		@cap_value = @crypto_currency.market_cap.delete("$,").length >= 10 ? "billion" : "million"
		@volume = Money.new("#{@crypto_currency.volume}".delete("$").to_f*100, "USD")
		@change_direction = @crypto_currency.percent_change[0] == "-" ? "v" : "^"
	end

	def set_infinite_precision
		@crypto_currency.price.to_f < 1 ? Money.infinite_precision = true : Money.infinite_precision = false
	end

	def set_base_currency
		puts "Please enter your fiat currency of interest's ISO code (e.g. USD, CAD, GBP, JPY, etc.):"
		@base_currency = gets.upcase.chomp.to_sym

		if Money::Currency.include?(@base_currency) == false
			puts "No such fiat currency found."
			set_base_currency
		end
	end	

	def display_results
		puts "-"*20
		puts "Crypto Currency: #{@crypto_currency.name}"
		puts "Current Price: #{@price.exchange_to(@base_currency).symbol}#{@price.exchange_to(@base_currency)} #{@price.exchange_to(@base_currency).currency.iso_code}"
		puts "Market Cap:  #{@cap.exchange_to(@base_currency).symbol}#{@cap.exchange_to(@base_currency)} #{@cap_value} #{@cap.exchange_to(@base_currency).currency.iso_code}"
		puts "Circulating Supply: #{@crypto_currency.circulating_supply}"
		puts "Percent Change (24 hrs): #{@crypto_currency.percent_change} #{@change_direction}" 
		puts "-"*20	
	end

end