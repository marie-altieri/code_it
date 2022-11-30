module Coders
  class ProjectsController < ApplicationController
    def index
      @projects = Project.all.where(coder_id: current_user.id)
    end

    def show
      @project = Project.find(params[:id])
    end

    def status
      if params['button_action'] == 'accept'
        :status == "accept"
      else
        :status == "decline"
      end
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      redirect_to coders_projects_path
    end

    private

    def projects_params
      params.require(:project).permit(:company_id, :description, :deadline)
    end
  end
end
