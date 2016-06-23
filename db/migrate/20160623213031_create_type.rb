class CreateType < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :attack
      t.decimal :normal, precision: 3, scale: 2
      t.decimal :fire, precision: 3, scale: 2
      t.decimal :water, precision: 3, scale: 2
      t.decimal :electric, precision: 3, scale: 2
      t.decimal :grass, precision: 3, scale: 2
      t.decimal :ice, precision: 3, scale: 2
      t.decimal :fighting, precision: 3, scale: 2
      t.decimal :poison, precision: 3, scale: 2
      t.decimal :ground, precision: 3, scale: 2
      t.decimal :flying, precision: 3, scale: 2
      t.decimal :psychic, precision: 3, scale: 2
      t.decimal :bug, precision: 3, scale: 2
      t.decimal :rock, precision: 3, scale: 2
      t.decimal :ghost, precision: 3, scale: 2
      t.decimal :dragon, precision: 3, scale: 2
      t.decimal :dark, precision: 3, scale: 2
      t.decimal :steel, precision: 3, scale: 2
      t.decimal :fairy, precision: 3, scale: 2
    end
  end
end
