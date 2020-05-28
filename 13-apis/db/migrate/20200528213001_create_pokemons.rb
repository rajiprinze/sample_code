class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.integer :base_attack
      t.string :pokemon_name
    end
  end
end
