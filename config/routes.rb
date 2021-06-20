# frozen_string_literal: true

Rails.application.routes.draw do
  root "usermodels#index"
  resources :usermodels, only: %i[new create edit update]
end
