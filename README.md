# crypto-compare-cli

CryptoCompare is a CLI that allows you to quickly display information on a crypto currency converted to denominations of your fiat currency of choice. It uses Nokogiri and OpenURI to scrape data from http://coinmarketcap.com/, which is a complete, up-to-date list of cryptocurrency valuations in USD, ordered from highest to lowest market cap. It also uses the Ruby Money and Google Currency (which extends Ruby Money) gems to instantiate Money objects for currency conversion using data from https://www.google.com/finance/converterWelcome. 

## Installation & Usage

After checking out the repo, cd into the project directory and run 'bin/cryptocompare'.

The CLI will greet the user, display the top 10 crypto currencies by market cap, and prompt the user for their crypto currency of interest. To choose, the user can either type the crypto currency of interest's name (e.g. bitcoin), or the number that appears with it in the top 10 list.

The user will then be prompted to enter their fiat currency of interest's [ISO Code](https://en.wikipedia.org/wiki/ISO_4217#Active_codes), the shorthand code for a country's national currency. The naming convention is the first two letters of the country (e.g. CA for Canada) followed by the first letter of it's currency (e.g. D for Dollars, put together: CAD).

The information on the user's crypto currency of choice is then displayed in denominations of their chosen fiat currency. The user can run the CLI again by choosing 'y' in the prompt above, or simply exit with 'n'.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jelocodes/crypto-compare-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
