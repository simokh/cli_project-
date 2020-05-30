#application environment 

#require is to access a ruby library path like gems  
require 'bundler/setup'
Bundler.require(:default)

#require_relative is a moethod that we pass a string argument to load or access the files within our application 
require_relative './quotes_cli/api.rb'
require_relative './quotes_cli/cli.rb'
require_relative './quotes_cli/quotes.rb'

