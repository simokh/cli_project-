# cli_project_State_Population_2018 


Welcome to my first Ruby Gem. This is about states' census for 2018. It provides a user with a list of all states and prompts the user to choose the specific state which they want more information about. 

The process for this gem was to set a GitHub repo and clone that repo to my local environment. Then it was time to set the folders that will host my code. 

I set up a gemfile which has “pry” for testing, rest-client to request data via API and json for parsing the Api response for better data readability and manipulation. Also, I included dotenv just in case I were to use an API key. 

Next step was to set up folders following the traditional tree hierarchy. 
I set up a bin folder which hosts two files; console and start. The console and start files have a direct path to all the files I coded in via require relative. 

To access console, I needed to make sure that I was in the correct directory then access it by typing bin/console. Console was extremely helpful in testing my code. Start is where all my files are executed and run. 

Next step was to create a lib folder to host all my class files for my code. I used three classes for this project; an Api, Cli and the Population file. 

The Api file contains the requesting through the uRL that can be accessesed through the link below:
https://datausa.io/about/api/ this website is sponsored by Deloitte and DataWheel. 

Api request was made through RestClient and it was parsed by JSON. An iteration was performed over the response to filter and use the data I found most helpful. 

After allocating the attributes that I wanted to work with, I created my Population class where I instantiated objects with those attributes then saved them into a class method @@all. The instantiation happened in the Api class. 

The last step was to code into the CLI class by working with those saved objects into the @@all array to make it user friendly. Once the program is executed, the user then is prompted to choose from a list of all states. Based of their selection, the attributes of that particular state will be displayed on the screen for them. They will also be asked whether they want to continue or exit the program. 

There you have it, the first gem was challenging; nevertheless I learned a lot. 


please run bundler to downlaod all the gems, no special install needed. 
API_KEY = 'https://datausa.io/api/data?drilldowns=State&measures=Population&year=latest'
https://opensource.org/licenses/MIT
