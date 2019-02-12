class CreateMovieStreamingServices < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_streaming_services do |t|
      t.integer :movie_id
      t.integer :streaming_service_id
    end
  end
end
