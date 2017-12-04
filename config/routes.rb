Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"
  resources :home
  resources :users
  get "login" => "users#login", :as => "login"
  delete "logout" => "users#logout", :as => "logout"
  post "sign_in" => "users#sign_in"

end
