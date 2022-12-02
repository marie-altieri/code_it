module Coders
  class UsersController < ApplicationController

    def show
      @coder = User.find(params[:id])
    end

    def edit
      @coder = User.find(params[:id])
    end

    def update
      @coder = User.find(params[:id])
      if @coder.update(users_params)
          redirect_to coders_user_path(current_user)
      else
          render 'edit'
      end
    end

    private

    def users_params
      params.require(:user).permit(:first_name, :last_name, :username, :description, :experience, :language, :availability, :years_of_experience, :password)
    end
  end
end
