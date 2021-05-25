Rails.application.routes.draw do
  # verb + path (the last part of the url after the '/') => controller_name#action_name

  # READ
  # See all restaurants ✅
  get "/restaurants", to: "restaurants#index"

  # CREATE
  # Create a restaurant ✅
  get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "/restaurants", to: "restaurants#create"

  # See details about one restaurant ✅
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  # UPDATE
  # Update a restaurant ✅
  get "/restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch "/restaurants/:id", to: "restaurants#update"

  # DELETE
  # Destroy a restaurant ✅
  delete "/restaurants/:id", to: "restaurants#destroy"

  # OR
  # resources :restaurants
end
