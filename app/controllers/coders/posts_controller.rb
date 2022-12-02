module Coders
  class PostsController < ApplicationController
    def index
      @posts = Project.all
    end

    def show
      @post = Project.find(params[:id])
    end

  end
end
