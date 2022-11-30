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
      params.require(:user).permit(XXXX)
    end
  end
end
