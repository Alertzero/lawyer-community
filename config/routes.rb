Rails.application.routes.draw do
  devise_for :admins, path: 'admin' #, controllers: { sessions: "admins/sessions"}
  devise_for :lawyers, path: 'lawyer' #, controllers: { sessions: "lawyers/sessions"}
  devise_for :clients, path: 'client' #, controllers: { sessions: "clients/sessions"}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'public#index'
end
