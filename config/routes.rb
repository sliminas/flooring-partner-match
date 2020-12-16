# frozen_string_literal: true

Rails.application.routes.draw do
  resources :partners, only: :index

  root to: "partners#index"
end
