module Companies
  class UsersController < ApplicationController
    def index
      @coders = User.all.where(role: "Coder")
      if params[:query].present?
        sql_query = "first_name ILIKE :query OR username ILIKE :query OR language ILIKE :query OR last_name ILIKE :query"
        @coders = User.where(sql_query, query: "%#{params[:query]}%")
      else
        @coders = User.all
      end
    end

    def show
      @coder = User.find(params[:id])
      @review = Review.new
    end

    def update
      add_to_favourites(params[:id])
    end

    def favourites
      @favourites
    end

    def add_to_favourites(coder) 
      @favourites = current_user.favourites
      @favourites << coder
      User.find(current_user.id).update(favourites: @favourites.uniq)
    end

    private

    def users_params
      params.require(:user).permit(:first_name, :last_name, :username)
    end
  end
end
