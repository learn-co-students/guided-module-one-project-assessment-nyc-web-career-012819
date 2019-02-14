puts "

╔╦╗┌─┐┬  ┬┬┌─┐  ╔═╗┬┌┐┌┌┬┐┌─┐┬─┐
║║║│ │└┐┌┘│├┤   ╠╣ ││││ ││├┤ ├┬┘
╩ ╩└─┘ └┘ ┴└─┘  ╚  ┴┘└┘─┴┘└─┘┴└─

"

def greet
  puts "You had me at hello! Welcome to Movie Finder, the movie app that tells you on what streaming services your movies are located."
end


def enter_movie
  puts "\nPlease enter a movie title to find out what streaming services it is on:"
  gets.chomp
end
