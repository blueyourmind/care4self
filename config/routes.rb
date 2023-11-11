Rails.application.routes.draw do
  devise_for :users

  resources :medications
  resources :frequencies, only: [:index, :show, :create, :update, :destroy]
  resources :intervals, only: [:index, :show, :create, :update, :destroy]
  resources :medication_frequencies, only: [:index, :show, :create, :update, :destroy]
  resources :reminders, only: [:index, :show, :create, :update, :destroy]

  root to: "pages#home"

end
