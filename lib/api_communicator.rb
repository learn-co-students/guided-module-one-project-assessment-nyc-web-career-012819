require 'unirest'
require 'json'
require 'pry'

def get_movie_streaming_services_from_api(movie_name)
  #make the web request
  response_string = Unirest.get('https://utelly-tv-shows-and-movies-availability-v1.p.rapidapi.com/lookup'),
  headers: {
  "X-RapidAPI-Key" => {ENV['API_KEY']}
  }
  response_hash = JSON.parse(response_string)

# character_data = response_hash["results"]
# character_data.find do |info|
#   films = info["films"]
#   if character_name == info["name"].downcase
#   counter = 1
#   info["films"].map do |film|
#     film_names = JSON.parse(RestClient.get(film))
#     puts "#{counter}. #{film_names["title"]}"
#     counter += 1
#       end
#     end
#   end
# end

  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.


# def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
# end

# def show_character_movies(character)
#   films = get_character_movies_from_api(character)
#   print_movies(films)
# end
