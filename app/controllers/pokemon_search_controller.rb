class PokemonSearchController < ApplicationController
  def index
    pokemon_name = params[:pokemon][:name] unless (params[:pokemon].nil? || params[:pokemon][:name].nil?)
    @poke = Pokemon.where('lower(name) = ?', pokemon_name.downcase).take if !pokemon_name.nil?
    if !@poke.nil?
      file_name = File.basename(URI.parse(@poke.image).path)[0,3]+".png"
      @pokemon_image = Rails.application.assets.find_asset("pokemon_images/"+file_name) ? "pokemon_images/"+file_name : @poke.image
    end
    if @poke.nil?
      flash[:error] = "The pokémon #{pokemon_name} could not be found."
      redirect_to pokemon_search_url(params: {pokemon: {name: Pokemon.first.name}})
    else
      @damage = damage @poke.type1, @poke.type2
    end
  end

  private
  def damage my_type1, my_type2
    results = []
    Type.all.each do |type|
      damage1 = my_type1.nil? ? 1 : type[my_type1.to_sym]
      damage2 = my_type2.nil? ? 1 : type[my_type2.to_sym]
      result_damage = damage1*damage2
      results << {attack: type.attack.to_s, damage: result_damage.to_s}
    end
    results
  end
end
