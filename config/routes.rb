Rails.application.routes.draw do
  root 'announcements#new'
  
  get '/', action: :new, controller: :announcements, as: :new_announcement
  post '/', action: :create, controller: :announcements, as: :create_announcement
  get '/history', action: :index, controller: :announcements, as: :announcements
end
