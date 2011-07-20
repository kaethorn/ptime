class ProjectMilestonesController < InheritedResources::Base
  before_filter :set_projects, :only => [:new, :edit]
  before_filter :set_milestones, :only => [:new, :edit]

  def create
    create!{ project_milestones_path }
  end

  def update
    update!{ project_milestones_path }
  end

  def new
    new!{ project_milestones_path }
  end

  protected

  def set_projects
    @projects = Project.all
  end

  def set_milestones
    @milestones = Milestone.all
  end
end
