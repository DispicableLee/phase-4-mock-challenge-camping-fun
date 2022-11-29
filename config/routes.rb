Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activity, only: [:index, :show] 

  resources :camper, only: [:index, :show] do
    resources :signup, only: [:show]
  end
end
