class PokemonSearchController < ApplicationController
  include ApplicationHelper
  def index
    @poke = Oakdex::Pokedex::Pokemon.find 1
    @damage = damage
  end

  def search
    pokemon_name = params[:name] unless (params[:name].nil?)
    @poke = Oakdex::Pokedex::Pokemon.find(pokemon_name.titleize) if !pokemon_name.nil?
    if !@poke.nil?
      @damage = damage
      render :index
    else @poke.nil?
      flash[:error] = "The pokémon #{pokemon_name} could not be found."
      redirect_to pokemon_search_url(params: {name: Oakdex::Pokedex::Pokemon.find(1).name})
    end
  end

  def names
    response = []
    Oakdex::Pokedex::Pokemon.all.each{|pokemon| response << pokemon[1].name}
    render :json => response
  end

  private
  def damage

    results = {}

    form_result = []
    my_type1 = @poke.types[0]
    my_type2 = @poke.types.length == 2 ? @poke.types[1] : nil
    Type.all.each do |type|
      damage1 = my_type1.nil? ? 1 : type[my_type1.downcase.to_sym]
      damage2 = my_type2.nil? ? 1 : type[my_type2.downcase.to_sym]
      result_damage = sprintf "%.2f", (damage1*damage2)
      form_result << {attack: type.attack.to_s, damage: result_damage.to_s}
    end
    results["tab_#{snake_case @poke.name}"] = form_result

    @poke.mega_evolutions.each do |mega|
      form_result = []
      my_type1 = mega['types'][0]
      my_type2 = mega['types'].length == 2 ? mega['types'][1] : nil
      Type.all.each do |type|
        damage1 = my_type1.nil? ? 1 : type[my_type1.downcase.to_sym]
        damage2 = my_type2.nil? ? 1 : type[my_type2.downcase.to_sym]
        result_damage = sprintf "%.2f", (damage1*damage2)
        form_result << {attack: type.attack.to_s, damage: result_damage.to_s}
      end
      results["tab_#{snake_case mega['mega_stone']}"] = form_result
    end

    @poke.variations.each do |variation|
      form_result = []
      my_type1 = variation['types'][0]
      my_type2 = variation['types'].length == 2 ? variation['types'][1] : nil
      Type.all.each do |type|
        damage1 = my_type1.nil? ? 1 : type[my_type1.downcase.to_sym]
        damage2 = my_type2.nil? ? 1 : type[my_type2.downcase.to_sym]
        result_damage = sprintf "%.2f", (damage1*damage2)
        form_result << {attack: type.attack.to_s, damage: result_damage.to_s}
      end
      results["tab_#{snake_case variation['names']['en']}"] = form_result
    end

    results
  end
end
