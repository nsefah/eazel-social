class PagesController < ApplicationController
  def profile
    #grab username from id
    @username = params[:id]

    @posts = Post.all
    @newPost = Post.new 
  end

  def home
  end

  def new
  end

  def show
  end

  def edit
  end

  def form
  end

end
