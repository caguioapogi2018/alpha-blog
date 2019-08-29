Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'pages/about', to: 'pages#about'

  resources :articles
  #get 'signup', to: 'users#new'
  resources :users, except: [:new]

  #get 'login', to: 'devise/sessions#new'
  #post 'login', to: 'sessions#create'
  #delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



