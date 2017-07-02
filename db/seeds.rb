# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

types = Type.create!([
  {attack: "bug",      normal: "1.0", fire: "0.5", water: "1.0", electric: "1.0", grass: "2.0", ice: "1.0", fighting: "0.5", poison: "0.5", ground: "1.0", flying: "0.5", psychic: "2.0", bug: "1.0", rock: "1.0", ghost: "0.5", dragon: "1.0", dark: "2.0", steel: "0.5", fairy: "0.5"},
  {attack: "dark",     normal: "1.0", fire: "1.0", water: "1.0", electric: "1.0", grass: "1.0", ice: "1.0", fighting: "0.5", poison: "1.0", ground: "1.0", flying: "1.0", psychic: "2.0", bug: "1.0", rock: "1.0", ghost: "2.0", dragon: "1.0", dark: "0.5", steel: "1.0", fairy: "0.5"},
  {attack: "dragon",   normal: "1.0", fire: "1.0", water: "1.0", electric: "1.0", grass: "1.0", ice: "1.0", fighting: "1.0", poison: "1.0", ground: "1.0", flying: "1.0", psychic: "1.0", bug: "1.0", rock: "1.0", ghost: "1.0", dragon: "2.0", dark: "1.0", steel: "0.5", fairy: "0.0"},
  {attack: "electric", normal: "1.0", fire: "1.0", water: "2.0", electric: "0.5", grass: "0.5", ice: "1.0", fighting: "1.0", poison: "1.0", ground: "0.0", flying: "2.0", psychic: "1.0", bug: "1.0", rock: "1.0", ghost: "1.0", dragon: "0.5", dark: "1.0", steel: "1.0", fairy: "1.0"},
  {attack: "fairy",    normal: "1.0", fire: "0.5", water: "1.0", electric: "1.0", grass: "1.0", ice: "1.0", fighting: "2.0", poison: "0.5", ground: "1.0", flying: "1.0", psychic: "1.0", bug: "1.0", rock: "1.0", ghost: "1.0", dragon: "2.0", dark: "2.0", steel: "0.5", fairy: "1.0"},
  {attack: "fighting", normal: "2.0", fire: "1.0", water: "1.0", electric: "1.0", grass: "1.0", ice: "2.0", fighting: "1.0", poison: "0.5", ground: "1.0", flying: "0.5", psychic: "0.5", bug: "0.5", rock: "2.0", ghost: "0.0", dragon: "1.0", dark: "2.0", steel: "2.0", fairy: "0.5"},
  {attack: "fire",     normal: "1.0", fire: "0.5", water: "0.5", electric: "1.0", grass: "2.0", ice: "2.0", fighting: "1.0", poison: "1.0", ground: "1.0", flying: "1.0", psychic: "1.0", bug: "2.0", rock: "0.5", ghost: "1.0", dragon: "0.5", dark: "1.0", steel: "2.0", fairy: "1.0"},
  {attack: "flying",   normal: "1.0", fire: "1.0", water: "1.0", electric: "0.5", grass: "2.0", ice: "1.0", fighting: "2.0", poison: "1.0", ground: "1.0", flying: "1.0", psychic: "1.0", bug: "2.0", rock: "0.5", ghost: "1.0", dragon: "1.0", dark: "1.0", steel: "0.5", fairy: "1.0"},
  {attack: "ghost",    normal: "0.0", fire: "1.0", water: "1.0", electric: "1.0", grass: "1.0", ice: "1.0", fighting: "1.0", poison: "1.0", ground: "1.0", flying: "1.0", psychic: "2.0", bug: "1.0", rock: "1.0", ghost: "2.0", dragon: "1.0", dark: "0.5", steel: "1.0", fairy: "1.0"},
  {attack: "grass",    normal: "1.0", fire: "0.5", water: "2.0", electric: "1.0", grass: "0.5", ice: "1.0", fighting: "1.0", poison: "0.5", ground: "2.0", flying: "0.5", psychic: "1.0", bug: "0.5", rock: "2.0", ghost: "1.0", dragon: "0.5", dark: "1.0", steel: "0.5", fairy: "1.0"},
  {attack: "ground",   normal: "1.0", fire: "2.0", water: "1.0", electric: "2.0", grass: "0.5", ice: "1.0", fighting: "1.0", poison: "2.0", ground: "1.0", flying: "0.0", psychic: "1.0", bug: "0.5", rock: "2.0", ghost: "1.0", dragon: "1.0", dark: "1.0", steel: "2.0", fairy: "1.0"},
  {attack: "ice",      normal: "1.0", fire: "0.5", water: "0.5", electric: "1.0", grass: "2.0", ice: "0.5", fighting: "1.0", poison: "1.0", ground: "2.0", flying: "2.0", psychic: "1.0", bug: "1.0", rock: "1.0", ghost: "1.0", dragon: "2.0", dark: "1.0", steel: "0.5", fairy: "1.0"},
  {attack: "normal",   normal: "1.0", fire: "1.0", water: "1.0", electric: "1.0", grass: "1.0", ice: "1.0", fighting: "1.0", poison: "1.0", ground: "1.0", flying: "1.0", psychic: "1.0", bug: "1.0", rock: "0.5", ghost: "0.0", dragon: "1.0", dark: "1.0", steel: "0.5", fairy: "1.0"},
  {attack: "poison",   normal: "1.0", fire: "1.0", water: "1.0", electric: "1.0", grass: "2.0", ice: "1.0", fighting: "1.0", poison: "0.5", ground: "0.5", flying: "1.0", psychic: "1.0", bug: "1.0", rock: "0.5", ghost: "0.5", dragon: "1.0", dark: "1.0", steel: "0.0", fairy: "2.0"},
  {attack: "psychic",  normal: "1.0", fire: "1.0", water: "1.0", electric: "1.0", grass: "1.0", ice: "1.0", fighting: "2.0", poison: "2.0", ground: "1.0", flying: "1.0", psychic: "0.5", bug: "1.0", rock: "1.0", ghost: "1.0", dragon: "1.0", dark: "0.0", steel: "0.5", fairy: "1.0"},
  {attack: "rock",     normal: "1.0", fire: "2.0", water: "1.0", electric: "1.0", grass: "1.0", ice: "2.0", fighting: "0.5", poison: "1.0", ground: "0.5", flying: "2.0", psychic: "1.0", bug: "2.0", rock: "1.0", ghost: "1.0", dragon: "1.0", dark: "1.0", steel: "0.5", fairy: "1.0"},
  {attack: "steel",    normal: "1.0", fire: "0.5", water: "0.5", electric: "0.5", grass: "1.0", ice: "2.0", fighting: "1.0", poison: "1.0", ground: "1.0", flying: "1.0", psychic: "1.0", bug: "1.0", rock: "2.0", ghost: "1.0", dragon: "1.0", dark: "1.0", steel: "0.5", fairy: "2.0"},
  {attack: "water",    normal: "1.0", fire: "2.0", water: "0.5", electric: "1.0", grass: "0.5", ice: "1.0", fighting: "1.0", poison: "1.0", ground: "2.0", flying: "1.0", psychic: "1.0", bug: "1.0", rock: "2.0", ghost: "1.0", dragon: "0.5", dark: "1.0", steel: "1.0", fairy: "1.0"}
])
