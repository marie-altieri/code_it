module Coders
  class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def show
      @user = User.new
    end

    private

    def users_params
      params.require(:user).permit(:first_name, :last_name, :username)
    end
  end
end
