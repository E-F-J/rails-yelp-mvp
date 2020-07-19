Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end

# Rails.application.routes.draw do
#   get 'restaurants', to: 'restaurants#index'
#   get 'restaurants/new', to: 'restaurants#new'
#   post 'restaurants', to: 'restaurants#create'
#   get 'restaurants/:id', to: 'restaurants#show', as: :restaurants

#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end

