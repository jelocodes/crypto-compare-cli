# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
	Instantiates a CLI object that uses instances of the Scraper and Crypto Currency objects to pass around and retrieve data for terminal output.
- [x] Pull data from an external source
	Uses Nokogiri and OpenURI to scrape data from http://coinmarketcap.com/, which is a complete, up-to-date list of cryptocurrency valuations in USD, ordered from highest to lowest market cap
	Also uses the Ruby Money and Google Currency (which extends Ruby Money) gems to instantiate Money objects for currency conversion using data from https://www.google.com/finance/converter
- [x] Implement both list and detail views
	The Scraper class can scrape the top 10 crypto currencies from the source page and put them in an array, each entry of which the Crypto Currency class can instantiate into proper Crypto Currency objects. The CLI then displays this list view to the user, who can access detail views displaying more information about their crypto currency of choice.

