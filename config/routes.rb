Rubunity::Application.routes.draw do

  resources :bookmarks do
     resources :comments
  end

  root :to => "bookmarks#index"

  resources :users, :user_sessions
 
  match "login" => "user_sessions#new", :as => "login"
  match "logout" => "user_sessions#destroy", :as => "logout"
  match "register" => "users#new", :as => "register"
  
  match "settings" => "users#edit", :as => "settings"
  
  match "search" => "search#query", :as =>"search"
  
end
