Rails.application.routes.draw do
  root to: 'offers#index'
  
  devise_for :users

  resources :users do 
    scope(path_names: { index: 'parcours' }) do
    resources :assignments, path: 'parcours'
    end
  end
  
  scope(path_names: { show: 'formation' }) do
    resources :learnings, path: 'formation'
  end

  resources :user_companies

  scope(path_names: { show: 'entreprise' }) do
  resources :companies, path: 'entreprise'
  end

  resources :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
  end

end