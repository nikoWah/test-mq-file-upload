Rails.application.routes.draw do

  resources :uploaded_files, only: [:index, :new, :create, :destroy]
  root 'uploaded_files#index'
end
