module Companies
  class PostsController < ApplicationController
    def new
      @post = Post.new
    end

    def create
      @post = Post.new(posts_params)
      @post.company_id = current_user.id

      if @post.save
        redirect_to companies_projects_path
      else
        render "companies/posts/new", status: :unprocessable_entity
      end
    end

    private

    def posts_params
      params.require(:post).permit(:company_id, :description, :deadline, :name)
    end
  end
end
