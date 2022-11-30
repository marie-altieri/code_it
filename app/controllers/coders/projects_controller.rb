module Coders
  class ProjectsController < ApplicationController
    def index
      @projects = Project.all
    end

    def show
      @project = Project.new
    end

    private

    def projects_params
      params.require(:project).permit(XXXX)
    end
  end
end
