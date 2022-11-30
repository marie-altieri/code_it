module Coders
  class ProjectsController < ApplicationController
    def index
      @projects = Project.all
    end

    def show
      @project = Project.find(params[:id])
    end

    private

    def projects_params
      params.require(:project).permit(:company_id, :description, :deadline)
    end
  end
end
