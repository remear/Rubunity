Rubunity::Application.routes.draw do
  
  resources :bookmarks

  root :to => "pages#home"

  resources :users, :user_sessions
 
  match "login" => "user_sessions#new", :as => "login"
  match "logout" => "user_sessions#destroy", :as => "logout"
  match "register" => "users#new", :as => "register"
  
  match "settings" => "users#edit", :as => "settings"
  
  match "search" => "search#query", :as => "search"
  
  
  #pages
  match "botusage" => "pages#irc_bot_usage", :as => "bot_usage"
end
