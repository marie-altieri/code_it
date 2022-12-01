module Companies
  class UsersController < ApplicationController
    def index
      @coders = User.all.where(role: "Coder")
      if params[:query].present?
        sql_query = "first_name ILIKE :query OR username ILIKE :query OR language ILIKE :query"
        @coders = User.where(sql_query, query: "%#{params[:query]}%")
      else
        @coders = User.all
      end
    end

    def show
      @coder = User.find(params[:id])
    end

    private

    def users_params
      params.require(:user).permit(:first_name, :last_name, :username)
    end
  end
end
