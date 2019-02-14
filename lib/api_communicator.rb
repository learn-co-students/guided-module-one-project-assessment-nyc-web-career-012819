require 'unirest'
require 'json'
require 'pry'

def get_movie_streaming_services_from_api(movie_name)
  #make the web request
  response = Unirest.get "https://utelly-tv-shows-and-movies-availability-v1.p.rapidapi.com/lookup?term=#{movie_name}",
  headers:{
    "X-RapidAPI-Key" => ENV['API_KEY']
  }


  if response.body["results"].length == 0
    puts "#{movie_name.capitalize} does not exist, please proceed to another option."
  else
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
      # create empty movie info array
      # check if the user input (name of movie/show) is in api.
      # IF IT IS - add results to movie info array
      # check if the user input is in own db.
      # IF IT IS - add results to movie info array
      # remove duplicate data from movie info array *** option ***
      # iterate over unique movie info array and puts out each result
      

      if Movie.find_by(name: movie_name)
        # binding.pry
        movie_from_db = Movie.find_by(name: movie_name)
        # binding.pry
        puts "Name: #{movie_from_db.name}"

        movie_streaming_service_from_db = MovieStreamingService.find_by(movie_id: movie_from_db.id)
        streaming_service = StreamingService.find_by(id: movie_streaming_service_from_db.streaming_service_id)
        # binding.pry
        puts "Streaming Service: #{streaming_service.name}"
        # puts "Name: #{movie_from_db.name}"

      else
        # binding.pry
        get_movie_streaming_services_from_api(movie_name)
        menu
      end

    elsif input == "Add" || input == "2" || input == "add"
      puts "Please enter the movie name to add: "
      movie_name = gets.chomp
      new_movie = Movie.find_by(name: movie_name)
      if new_movie
        puts "#{new_movie.name.capitalize} already exists."
        menu
      else
        newer_movie = Movie.create(name: movie_name)
        puts "#{movie_name.capitalize} doesn't exist, please add the associated streaming service."
        menu_streaming_services(movie_name)
        puts "#{movie_name.capitalize} was added to the corresponding streaming service."
        menu
      end

    elsif input == "Update" || input == "3" || input == "update"
      puts "Please enter the movie name to edit: "
      movie_name = gets.chomp
      new_movie_id = Movie.find_by(name: movie_name).id
      puts "Please enter the name of the streaming service you wish to change to: "
      new_streaming_service_name = gets.chomp
      # binding.pry
      new_s_id = StreamingService.find_by(name: new_streaming_service_name).id
      current_streaming_service_id = MovieStreamingService.where(movie_id: new_movie_id)
      new_streaming_service_id = current_streaming_service_id.update_attribute(streaming_service_id: new_s_id)
      # new_streaming_service_id.save
      # updated_movie = new_movie.update(name: )
      # updated_movie.save
      puts "#{updated_movie.name.capitalize} has been updated with the correct streaming service."
      menu
      #.update
    elsif input == "Delete" || input == "4" || input == "delete"
      puts "Please enter the movie name to delete: "
      movie_name = gets.chomp
      new_movie = Movie.find_by(name: movie_name)
      if new_movie
        new_movie.destroy
        puts "#{new_movie.name.capitalize} has been deleted."
        menu
      else
        puts "#{movie_name.capitalize} doesn't exist, so it cannot be deleted! Please choose another option."
        menu
      end
    else
      puts "Hasta la vista, baby."
    end
end

def menu_streaming_services(new_movie)
  choices = ["Netflix", "Hulu", "Amazon Prime", "ITunes", "HBO", "Exit"]
  new_movie_id = Movie.all.where(name: new_movie)[0].id

  num = 1
  choices.each do |choice|
    puts "#{num}. #{choice}"
    num += 1
  end

  input = gets.chomp
    if input == "Netflix" || input == "1" || input == "netflix"
      MovieStreamingService.create(movie_id: new_movie_id, streaming_service_id: 1)
    elsif input == "Hulu" || input == "2" || input == "hulu"
      MovieStreamingService.create(movie_id: new_movie_id, streaming_service_id: 2)
    elsif input == "Amazon Prime" || input == "3" || input == "amazon prime"
      MovieStreamingService.create(movie_id: new_movie_id, streaming_service_id: 3)
    elsif input == "ITunes" || input == "4" || input == "itunes"
      MovieStreamingService.create(movie_id: new_movie_id, streaming_service_id: 4)
    elsif input == "HBO" || input == "5" || input == "hbo"
      MovieStreamingService.create(movie_id: new_movie_id, streaming_service_id: 5)
    else
      puts "I'll be back."
  end
end
