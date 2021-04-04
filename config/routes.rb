Rails.application.routes.draw do
  root 'announcements#create'

  get 'announcements/new'
  get 'announcements/index'
  get 'announcements/create'  
end
