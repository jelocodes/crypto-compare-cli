# crypto-compare-cli

CryptoCompare is a CLI that allows you to quickly display information on a crypto currency within the top 10 Crypto Currencies (sorted by market cap) in your fiat currency of choice. It uses Nokogiri and OpenURI to scrape data from http://coinmarketcap.com/, which is a complete, up-to-date list of cryptocurrency valuations in USD, ordered from highest to lowest market cap. It also uses the Ruby Money and Google Currency (which extends Ruby Money) gems to instantiate Money objects for currency conversion using data from https://www.google.com/finance/converterWelcome. 

## Usage

Run the CLI by cd'ing into the project directory and running 'bin/cryptocompare'.

The CLI will greet the user, display the top 10 crypto currencies by market cap, and prompt the user for their crypto currency of interest. To choose, the user can either type the crypto currency of interest's name (e.g. bitcoin), or the number that appears with it in the top 10 list (e.g. 1).

The user will then be prompted to enter their fiat currency of interest's [ISO Code](https://en.wikipedia.org/wiki/ISO_4217#Active_codes), the shorthand code for a country's national currency. The naming convention for an ISO Code is the first two letters of the country (e.g. CA for Canada) followed by the first letter of the name of it's currency (e.g. D for Dollars, put together: CAD).

The information on the user's crypto currency of choice is then displayed in denominations of the user's chosen fiat currency. The user is lastly given the option of converting another crypto currency to fiat. They can run the CLI again by choosing 'y' in the prompt, or simply exit with 'n'.