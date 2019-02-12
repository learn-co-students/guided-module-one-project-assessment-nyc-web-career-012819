class StreamingService < ActiveRecord::Base
  has_many :movie_streaming_services
  has_many :movies, through: :movie_streaming_services
end
