require_relative '../config/environment'

class Scraper
	attr_accessor :page

	def get_page
		@page = Nokogiri::HTML(open("http://coinmarketcap.com/"))
	end

	def get_attributes(crypto_currency)

		data = {}
		data["name"] = crypto_currency
		data["price"] = @page.css("tr#id-#{crypto_currency} td.no-wrap a.price").text
		data["market_cap"] = @page.css("tr#id-#{crypto_currency} td.market-cap").text.gsub(/\s+/, "")
		data["circulating_supply"] = @page.css("tr#id-#{crypto_currency} td.no-wrap a[target='_blank']").text.gsub(/\s+/, " ")
		data["percent_change"] = @page.css("tr#id-#{crypto_currency} td.percent-24h").text
		data
	end

end
