class PagesController < ApplicationController
  def welcome
    @announcements = Announcement.all.last(3)
    @events = Event.all.last(3)
  end

  def gallery
  end

  def resource
  end

  def admin
  end

  #devise login form resources
  helper_method :resource_name, :resource, :devise_mapping

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
