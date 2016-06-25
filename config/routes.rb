Rails.application.routes.draw do
  root 'pokemon_search#index'
  get 'pokemon_search' => 'pokemon_search#search'
  resources :pokemon_search do
    get :autocomplete_pokemon_name, :on => :collection
  end
end
