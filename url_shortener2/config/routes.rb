UrlShortener2::Application.routes.draw do
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'  

  resources :short_urls, :except => [:index, :update, :destroy, :edit]
  resources :users, :except => [:index, :update, :show, :destroy, :edit]
  resources :sessions, :except => [:index, :update, :show, :edit]

  get ':short_url', :to => 'visits#show'

  root :to => 'short_urls#new'
end
