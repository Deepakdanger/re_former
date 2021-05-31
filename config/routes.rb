# frozen_string_literal: true

Rails.application.routes.draw do
  root "usermodels#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :usermodels, only: %i[new create edit update show]
end
