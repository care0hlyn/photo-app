Rails.application.routes.draw do

root :to => 'sessions#new'
  resources :sessions, :except => [:update, :show, :index]
  resources :users do
    resources :photos do
      resources :tags, :except => [:index, :update, :show, :edit]
    end
  end
end

