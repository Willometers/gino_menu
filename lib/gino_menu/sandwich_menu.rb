# def call 
#     # to be used upon start up in the bin
#     system('clear')
#     # define method that introduces User to app
#     greeting
#     # create menu options from scraper for user to select (gets)
#     menu
# end

# def greeting
#     puts 
#     # Hi, how ya doin etc.
# end

# # this is where user inputs selections
# def menu 
#     # displays the main menu tree 
#     # Cheesesteaks
#     # Other Bada$$ Sandwiches
#     # Sides
# end
require 'open-uri'
require 'net/http'

url = "https://www.ginosfayettevilleny.com/menu"
uri = URI.parse(url)
response = NET::HTTP.get_response(uri)
puts response.body

