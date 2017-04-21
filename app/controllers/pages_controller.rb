class PagesController < ApplicationController
  # def profile
  #   #grab username from id
  #   @username = params[:id]
  #
  #   @posts = Post.all
  #   @newPost = Post.new
  # end
  def profile
    # grab the username from the URL as :id
    if (User.find_by_name(params[:id]))
      @username = params[:id]
    else
      # redirect to 404 (root for now)
      redirect_to root_path, :notice=> "User not found!"
    end
    #
    @posts = Post.all
    @newPost = Post.new
    #
    # @toFollow = User.all.last(5)
  end

  def home
    @username = params[:id]
    @posts = Post.all
    @newPost = Post.new
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
