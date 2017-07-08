# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
	Instantiates a CLI object that uses instances of the Scraper and Crypto Currency objects to pass around and retrieve data for terminal output.
- [x] Pull data from an external source
	Uses Nokogiri and OpenURI to scrape data from http://coinmarketcap.com/, which is a complete, up-to-date list of cryptocurrency valuations in USD
	Also uses the Ruby Money and Google Currency (which extends Ruby Money) gems to instantiate Money objects for currency conversion using data from https://www.google.com/finance/converter
- [ ] Implement both list and detail views

