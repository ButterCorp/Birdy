class UsersController < ApplicationController
  def show
    @relationship = Relationship.all
    @user = User.find(params[:id])
    @posts = Post.all
  end
end
