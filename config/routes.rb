Rails.application.routes.draw do

  resources :sessions, :except => [:update, :show, :index]
  resources :users do
    resources :photos
  end

  root :to => 'sessions#new'


  resources :tags

end

