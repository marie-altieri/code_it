module Coders
  class PostsController < ApplicationController
    # def index
    #   @posts = Post.all
    # end

    def index
      @posts = Post.all
      if params[:query].present?
        sql_query = "posts.name ILIKE :query OR posts.description ILIKE :query OR users.first_name ILIKE :query"
        @posts = Post.where(sql_query, query: "%#{params[:query]}%")

        @posts = Post.joins(:company).where(sql_query, query: "%#{params[:query]}%")
      else
        @posts
      end
    end

    def show
      @post = Post.find(params[:id])
    end

  end
end
