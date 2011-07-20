class MilestonesController < InheritedResources::Base
  def create
    create!{ milestones_path }
  end

  def update
    update!{ milestones_path }
  end

  def new
    new!{ milestones_path }
  end
end
