# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "pages#home"

  get "pages/home"
  get "pages/about"

  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: :logout
end
