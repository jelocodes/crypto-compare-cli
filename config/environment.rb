require 'open-uri'
require 'pry'
require 'money/bank/google_currency'

require 'bundler'
Bundler.require

require_all './lib'

Money.use_i18n = false
Money.infinite_precision = true