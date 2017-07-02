class DropPokemonTable < ActiveRecord::Migration
  def change
    drop_table :pokemon
  end
end
