Rails.application.routes.draw do
  root 'announcements#new'

  resources :announcements, only: [:index, :new, :create]
end
