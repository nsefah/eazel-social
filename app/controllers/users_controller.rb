class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :check_authorization, only: [:edit, :update]
  before_action :set_user
  def edit

  end

  def update

  end

  private
    #checks to make sure the user owns the page
    def check_authorization
      unless current_user.id == params[:id]
        redirect_to root_path
      end
    end
    #gets the user, used in views
    def set_user
      @user = User.find(params[:id])
    end
end
