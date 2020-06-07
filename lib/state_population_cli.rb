#application environment 

#require is to access a ruby library path like gems  
require 'bundler/setup'
Bundler.require(:default)

#dotenv gem and .evn file host the api key so it won't be loaded into github 
require 'dotenv/load'


#require_relative is a moethod that we pass a string argument to load or access the files within our application 
require_relative './state_population_cli/api.rb'
require_relative './state_population_cli/cli.rb'
require_relative './state_population_cli/population.rb'

