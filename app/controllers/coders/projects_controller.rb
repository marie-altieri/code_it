module Coders
  class ProjectsController < ApplicationController
    def index
      @projects = Project.all.where(coder_id: current_user.id)
      @pending_projects = @projects.where(status: "Pending")
      @accepted_projects = @projects.where(status: "Approved")
    end

    def show
      @project = Project.find(params[:id])
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      redirect_to coders_projects_path
    end

    def update
      @project = Project.find(params[:id])
      @project.update(status: "Approved")
      redirect_to coders_projects_path
    end

    private

    def projects_params
      params.require(:project).permit(:company_id, :description, :deadline, :name, :status)
    end
  end
end
