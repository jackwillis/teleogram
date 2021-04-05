Rails.application.routes.draw do
  root 'announcements#new'
  
  get '/', action: :new, controller: :announcements, as: :announcements
  post '/', action: :create, controller: :announcements, as: :new_announcement
  get '/history', action: :index, controller: :announcements, as: :create_announcement
end
