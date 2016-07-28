class PagesController < ApplicationController
  def welcome
    @announcements = Announcement.all.first(5)
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
