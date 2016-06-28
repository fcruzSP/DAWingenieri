Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :recipes
  get 'welcome/index'

  root 'welcome#index'

  get 'myrecipe' => 'recipes#myrecipe'
  get 'recipeof/:user_id' => 'recipes#recipeof', :as => "recipeof"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
