Rails.application.routes.draw do


  devise_for :users, controller: { confirmations: "confirmations", omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'welcome/index'
  # get 'articles/new'
  resources :articles do
    resources :comments
  end
  post 'articles/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
