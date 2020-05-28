require_relative 'config/environment'

url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"

pokemon_stats = RestClient::Request.execute(method: :get, 
    url: "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json", 
    headers:{
    "X-RapidAPI-Host" => "pokemon-go1.p.rapidapi.com",
    "X-RapidAPI-Key" => ""
  })
  


  puts "all seeds are done. woot!"
  binding.pry
  0