Rubunity::Application.routes.draw do
  resources :comments

  resources :bookmarks do
    match "add_topic", :as => "add_topic"
    match "add_rails_version", :as => "add_rails_version"
    match "add_ruby_version", :as => "add_ruby_version"
    resources :comments
  end
  

  resources :users, :user_sessions

  match "login" => "user_sessions#new", :as => "login"
  match "logout" => "user_sessions#destroy", :as => "logout"
  match "register" => "users#new", :as => "register"
  
  match "settings" => "users#edit", :as => "settings"
  
  match "search" => "search#query", :as => "search"
  
  
  #pages
  match "botusage" => "pages#irc_bot_usage", :as => "bot_usage"
  
  root :to => "pages#home"
end
