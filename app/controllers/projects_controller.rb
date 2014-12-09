class ProjectsController < ApplicationController
  def freeteeth

  end

  def show
    @project = Project.friendly.find(params[:id])
    p "!" * 100
    p @project.name
    case @project.slug
    when "frogpress"
      render :frogpress
    when "capms"
      render :capms
    when "when-where"
      render :whenwhere
    when "fit-together"
      render :fittogether
    when "wow-stats-realms"
      render :wowstatsrealms
    when "test"
      render :test
    else
      redirect_to("/")
    end
  end
end
