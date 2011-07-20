class PlansController < InheritedResources::Base
  before_filter :set_projects, :only => [:new, :edit]
  before_filter :set_users, :only => [:new, :edit]

  def create
    create!{ }
  end

  def update
    update!{ }
  end

  def new
    new!{ }
  end

  protected

  def set_projects
    @projects = Project.all
  end

  def set_users
    @users = User.all
  end
end
