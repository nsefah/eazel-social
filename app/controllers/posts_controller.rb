class PostsController < ApplicationController
  def index

  end

  def show

  end

  def new #generate new post
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update

  end

  def destroy

  end

  private

  def find_post
  end

  def post_params
    params.require(:post).permit(:title, :link, :description)
  end


end
