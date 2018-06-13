# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    @relationship = Relationship.all
    @posts = Post.all
  end
end