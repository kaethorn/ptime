class ProjectsController < ApplicationController
  before_filter :prepare_project_states, :only => [:new, :edit, :index, :update]
  before_filter :prepare_project_probabilities, :only => [:new, :edit, :update]

  def index
    @search = Project.search(params[:search])
    @projects = @search.all
  end

  def create
    @project = Project.new(params[:project])

    if @project.save
      redirect_to projects_url, :notice => 'Project successfully created.'
    else
      render :action => 'new'
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = 'Successfully updated project.'
      redirect_to projects_url
    else
      render :action => 'edit'
    end
  end

  def new
    @project = Project.new
    @project.set_default_tasks
  end

  def edit
    @project = Project.find(params[:id])
  end

  protected

  def prepare_project_states
    @project_states = ProjectState.all
  end

  def prepare_project_probabilities
    @project_probabilities = ActiveSupport::OrderedHash[(0..10).map {|n| ["#{n*10}%", n.to_f/10]}]
  end
end
