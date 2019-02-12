class Movie < ActiveRecord::Base
  has_many :movie_streaming_services
  has_many :streaming_services, through: :movie_streaming_services
end
