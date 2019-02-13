require 'bundler'
require 'dotenv/load'
Bundler.require
# require 'unirest'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'


  # {"status_code"=>200,
  #  "updated"=>"2019-02-11T04:00:21+0000",
  #  "term"=>"seinfeld",
  #  "results"=>
  #   [{"picture"=>
  #      "https://utellyassets2-10.imgix.net/2/Open/Sony%20Pictures%20Television/Seinfeld/Season%203/Seinfeld-Season3-Promo1.jpg?fit=crop&auto=compress&crop=faces,top",
  #     "name"=>"Seinfeld",
  #     "locations"=>
  #      [{"display_name"=>"iTunes",
  #        "name"=>"ITunes",
  #        "url"=>
  #         "https://itunes.apple.com/gb/tv-season/seinfeld-season-7/id1277240597?uo=5&at=1l3v7yf",
  #        "id"=>"524b8c30f0ca9f60fe406025",
  #        "icon"=>
  #         "https://utellyassets7.imgix.net/locations_icons/utelly/black/ITunes.png?&w=92&auto=compress&app_version=5s2gpuod4j-996"},
  #       {"display_name"=>"Amazon Prime",
  #        "name"=>"AmazonPrime",
  #        "url"=>
  #         "http://www.amazon.co.uk/gp/product/B01MSWBWY6?tag=utellycom00-21",
  #        "id"=>"56ab6f4e5c92eb4bbfce615c",
  #        "icon"=>
  #         "https://utellyassets7.imgix.net/locations_icons/utelly/black/AmazonPrime.png?&w=92&auto=compress&app_version=5s2gpuod4j-996"}],
  #     "weight"=>544,
  #     "id"=>"585a229cebb7f94f511edabd"},
  #    {"picture"=>
  #      "https://utellyassets2-7.imgix.net/2/Open/Netflix_2588/Program/33644070/_4by3/Jerry%20Before%20Seinfeld-Keyart.jpg?fit=crop&auto=compress&crop=faces,top",
  #     "name"=>"Jerry Before Seinfeld",

# binding.pry
# 0
