module Companies
  class ProjectsController < ApplicationController
    def index
      @projects = Project.all.where(company_id: current_user.id)
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
        redirect_to companies_projects_path
      else
        render "companies/projects/new", status: :unprocessable_entity
      end
    end

    private

    def projects_params
      params.require(:project).permit(:coder_id, :description, :deadline, :name, :coder)
    end
  end
end
