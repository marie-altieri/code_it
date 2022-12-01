module Companies
  class ProjectsController < ApplicationController

    def index
      @projects = Project.all
    end

    def show
      @project = Project.find(params[:id])
    end

    def new
      @project = Project.new
    end

    def create
      @project = Project.new(projects_params)
      @project.company_id = current_user.id

      if @project.save
        redirect_to coders_projects_path
      else
        render "companies/projects/new", status: :unprocessable_entity
      end
    end

    private

    def projects_params
      params.require(:project).permit(:coder_id, :description, :deadline, :name)
    end
  end
end
