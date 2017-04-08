class PagesController < ApplicationController
  
  # Backend code for landing page
  def index
    @posts = Post.all.where("user_id =?", User.find_by_username(current_user.username))
    @newPost = Post.new
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
