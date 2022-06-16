Rails.application.routes.draw do
  root to: 'offers#index'

  devise_for :users
 
  resources :companies

  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
  end

end
