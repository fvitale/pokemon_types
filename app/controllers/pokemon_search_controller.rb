class PokemonSearchController < ApplicationController
  def index
    pokemon_name = params[:pokemon_name] unless params[:pokemon_name].nil?
    @poke = Pokemon.where(name: pokemon_name).take if !pokemon_name.nil?
    @pokemon_image = File.basename(URI.parse(@poke.image).path) if !@poke.nil?
    if @poke.nil?
      flash[:error] = "The pokemon #{pokemon_name} could not be found."
      redirect_to pokemon_search_url(pokemon_name: Pokemon.first.name)
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
