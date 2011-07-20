class PlansController < InheritedResources::Base
  before_filter :set_projects, :only => [:new, :edit]
  before_filter :set_users, :only => [:new, :edit]

  def create
    create!{ plans_path }
  end

  def update
    update!{ plans_path }
  end

  def new
    new!{ plans_path }
  end

  protected

  def set_projects
    @projects = Project.all
  end

  def set_users
    @users = User.all
  end
end
