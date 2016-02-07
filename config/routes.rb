Rails.application.routes.draw do

  devise_for :users
  resources :dbays
  get 'home' => 'welcome#index'

  get 'dbay' => 'welcome#dbay'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  root 'welcome#index'


end
