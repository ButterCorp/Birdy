class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[create destroy]
  before_action :correct_user,   only: :destroy


  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Le post a été publié!"
      redirect_to root_url
    else
      @feed_items = []
      render 'home/index'
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Le post a bien été supprimé!"
    redirect_to request.referrer || root_url
  end

  private
  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    redirect_to root_url if @post.nil?
  end

    def post_params
      params.require(:post).permit(:content, :user_id)
    end
end
