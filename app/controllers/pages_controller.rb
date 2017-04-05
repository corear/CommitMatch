class PagesController < ApplicationController
  
  # Backend code for landing page
  def index
  end

  # Backend code for default home page
  def landing
  end

  # Backend code for viewing a profile page
  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
     redirect_to root_path, :notice => "User not found!"
    end
  end

  # Backend code for exploring profiles
  def explore
  end
end
