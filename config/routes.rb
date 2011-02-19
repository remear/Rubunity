Rubunity::Application.routes.draw do
  root :to => "pages#home"

  resources :comments

  resources :bookmarks do
    resources :comments
  end
  match "add_topic" => "bookmarks#add_topic", :as => "bookmark_add_topic"

  resources :users, :user_sessions

  match "login" => "user_sessions#new", :as => "login"
  match "logout" => "user_sessions#destroy", :as => "logout"
  match "register" => "users#new", :as => "register"
  
  match "settings" => "users#settings", :as => "settings"
  
  match "search" => "search#query", :as => "search"
  
  
  #pages
  match "botusage" => "pages#irc_bot_usage", :as => "bot_usage"

  # admin
  match 'admin' => 'admin#index', :as => :admin
  scope "/admin" do
    resources :users
  end
end
