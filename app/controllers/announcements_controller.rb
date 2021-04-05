class AnnouncementsController < ApplicationController
  def new
  end

  def index
    @announcements = Announcement.all
  end

  def create
    Announcement.create!(message: params[:message])
    flash[:notice] = 'Message sent!'
    redirect_to announcements_url
  end
end
