require 'unirest'
require 'json'
require 'pry'

def get_movie_streaming_services_from_api(movie_name)
  #make the web request
  response = Unirest.get "https://utelly-tv-shows-and-movies-availability-v1.p.rapidapi.com/lookup?term=#{movie_name}",
  headers:{
    "X-RapidAPI-Key" => ENV['API_KEY']
  }

  num_locations = response.body["results"][0]["locations"].length
  i = 0
  while i < num_locations
    puts "\nName: #{response.body["results"][0]["name"]}"
    puts "Streaming Service: #{response.body["results"][0]["locations"][i]["name"]}"
    puts "URL: #{response.body["results"][0]["locations"][i]["url"]}"
    i += 1
  end
  menu
end

def menu
  puts "\nI'm going to make him an offer he can't refuse:"
  choices = ["Check", "Add", "Update", "Delete", "Exit"]

  num = 1
  choices.each do |choice|
    puts "#{num}. #{choice}"
    num += 1
  end
  input = gets.chomp

    if input == "Check" || input == "1" || input == "check"
      puts "Please enter the movie name: "
      movie_name = gets.chomp
      get_movie_streaming_services_from_api(movie_name)
    elsif input == "Add" || input == "2" || input == "add"
      puts "Please enter the movie name to add: "
      movie_name = gets.chomp
      new_movie = Movie.find_by(name: movie_name)
      if new_movie
        newer_movie = Movie.create(name: movie_name)
        puts "#{newer_movie.name.capitalize} already exists"
        menu
      else
        puts "#{movie_name.capitalize} doesn't exist, please add the associated streaming service."
        menu_streaming_services(new_movie)
      end

    elsif input == "Update" || input == "3" || input == "update"
      puts "Please enter the movie name to edit: "
      movie_name = gets.chomp
      puts " has been updated"
      menu
    elsif input == "Delete" || input == "4" || input == "delete"
      puts "Please enter the movie name to delete: "
      movie_name = gets.chomp
      puts " has been deleted"
      menu
    #.destory
    else
      puts "Hasta la vista, baby."
    end
end

def menu_streaming_services(new_movie)
  choices = ["Netflix", "Hulu", "Amazon", "ITunes", "HBO"]

  num = 1
  choices.each do |choice|
    puts "#{num}. #{choice}"
    num += 1
  end

  input = gets.chomp
    if input == "Netflix" || input == "1" || input == "netflix"

    elsif input == "Hulu" || input == "2" || input == "hulu"
    elsif input == "Amazon" || input == "3" || input == "amazon"
    elsif input == "ITunes" || input == "4" || input == "itunes"
    elsif input == "HBO" || input == "5" || input == "hbo"
  end
end
