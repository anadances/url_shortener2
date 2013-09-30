UrlShortener2::Application.routes.draw do
  resources :short_urls, :except => [:index, :update, :destroy]
  get ':short_url', :to => 'visits#show'

  root :to => 'short_urls#new'
end
