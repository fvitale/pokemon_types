class CreatePokemon < ActiveRecord::Migration
  def change
    create_table :pokemon do |t|
      t.string :name, :null => false
      t.string :type1, :null => false
      t.string :type2
      t.string :image
    end
  end
end
