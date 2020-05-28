url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"

#sent hte request and got the data
pokemon_stats = RestClient::Request.execute(method: :get, 
    url: "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json", 
    headers:{
    "X-RapidAPI-Host" => "pokemon-go1.p.rapidapi.com",
    "X-RapidAPI-Key" => ENV["API_KEY"]
  })

  #just need the response body to get our data
  response_body = pokemon_stats.body

    #convert to a hash using JSON.parse
  json_data = JSON.parse(response_body)
  #get the columnsm that I want.
  pokemons = json_data.map{ |pokemon| { base_attack: pokemon["base_attack"], pokemon_name: pokemon["pokemon_name"] }  }

  json_data.each do |pokemon| 
    Pokemon.find_or_create_by(pokemon)
  end
  binding.pry

  puts "all seeds are done. woot!"
