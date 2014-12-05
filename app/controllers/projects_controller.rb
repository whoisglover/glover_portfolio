class ProjectsController < ApplicationController
  def freeteeth

  end

  def show
    @project = Project.friendly.find(params[:id])
    render :freeteeth
  end
end
