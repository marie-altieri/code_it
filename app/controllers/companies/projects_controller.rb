module Companies
  class ProjectsController < ApplicationController
  
    def index
      @projects = Project.all
    end

    def show
      @project = Project.new
    end

    def new
      @project = Project.new
    end

    def create
      @projet = Project.new(projects_params)
      @project.company_id = current_user.id
      if @project.save
        redirect_to companies_projects_path
      else
        render "companies/projects/new"
      end
    end

    private

    def projects_params
      params.require(:project).permit(XXXX)
    end
  end
end
