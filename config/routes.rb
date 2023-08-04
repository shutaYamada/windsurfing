Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "homes/about" => "homes#about", as: "about"
  get "ranks/rank" => "ranks#rank", as: "rank"
  resources :users
  resources :departures
  get "users/departure" => "users#departure", as: "dep"
end
