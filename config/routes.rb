Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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
    resources :companies, path: 'entreprise' do
      get :learnings, on: :member
      get :offers, on: :member
      get :users, on: :member
    end
  end

  resources :contacts, only: %i[new create] do
    get '/thanks' => 'contacts#thanks'
  end
end
