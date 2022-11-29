module Companies
  class UsersController < ApplicationController

    def index
      @coders = User.all.where(role: "Coder")
    end

    def show
      @coder = User.find(params[:id])
    end

    private

    def users_params
      params.require(:user).permit(XXXX)
    end
  end
end
