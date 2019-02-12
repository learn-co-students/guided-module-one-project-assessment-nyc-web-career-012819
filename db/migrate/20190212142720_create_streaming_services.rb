class CreateStreamingServices < ActiveRecord::Migration[5.2]
  def change
    create_table :streaming_services do |t|
      t.string :name
      t.string :url
    end
  end
end
