Rails.application.routes.draw do
  root 'announcements#create'

  resources :announcements, only: [:index, :new, :create]
end
