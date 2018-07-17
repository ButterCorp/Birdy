# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    if(user_signed_in?)
      @micropost  = current_user.posts.build
      @feed_items =   current_user.feed.paginate(page: params[:page])
    end
  end
end