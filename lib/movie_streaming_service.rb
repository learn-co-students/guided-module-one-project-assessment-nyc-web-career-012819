class MovieStreamingService < ActiveRecord::Base
  belongs_to :movie
  belongs_to :streaming_service
end
