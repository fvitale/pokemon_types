class @PokemonAutocomplete
  constructor: (el) ->
    @el = $(el)

  init: ->
    @registerNames()

  registerNames: ->
    request = $.get '/pokemon_names'
    request.success (data) ->
      $( "#name" ).autocomplete
        source: data
    request.error (jqXHR, textStatus, errorThrown) -> console.log("AJAX Error: ${textStatus}.")

$ ->
  if $('.container-fuid.pokemon-data').length
    pokemonAutocommplete = new PokemonAutocomplete('.container-fuid.pokemon-data')
    pokemonAutocommplete.init()

