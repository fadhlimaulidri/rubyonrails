Rails.application.routes.draw do

  # get 'home/index'
  get 'index' => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home
  root to: "home#index"

  get 'index' => "commingsoons#index"
  resources :commingsoons
  root to: "commingsoons#index"

end
