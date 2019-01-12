class @Autocomplete
  constructor: (el) ->
    @el = $(el)
    @registerNames()

  registerNames: ->
    request = $.get '/pokemon_names'
    request.success (data) ->
      $('#name').autocomplete
        source: data
    request.error (jqXHR, textStatus, errorThrown) -> console.log("AJAX Error: ${textStatus}.")

$ ->
  if $('#main-data').length
    autocomplete = new Autocomplete('#main-data')
