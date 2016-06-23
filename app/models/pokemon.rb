class Pokemon < ActiveRecord::Base
  # Because we hate when someone says pokémons as plural for pokémon :)
  self.table_name = "pokemon"
end