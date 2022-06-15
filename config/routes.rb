Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
  end
  root to: 'offers#index'
end
