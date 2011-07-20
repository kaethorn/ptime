class AccountingsController < InheritedResources::Base
  before_filter :set_projects, :only => [:new, :edit]

  def create
    create!{ accountings_path }
  end

  def update
    update!{ accountings_path }
  end

  def new
    new!{ accountings_path }
  end

  protected

  def set_projects
    @projects = Project.all
  end
end
