Rails.application.routes.draw do

  root                'static_pages#home'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'

  devise_for :users
  resources :boxes, except: [ :new, :create ]
  resources :histories, only: [ :edit, :update, :delete ]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resource  :users,     only: [ :create, :update, :destroy ]
      resources :boxes,     only: [ :index, :show, :create, :update, :destroy ]
      resource  :histories, only: [ :create, :update, :destroy ]
    end                                
  end
end
