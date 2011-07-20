require "spec_helper"

describe ProjectMilestonesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/project_milestones" }.should route_to(:controller => "project_milestones", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/project_milestones/new" }.should route_to(:controller => "project_milestones", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/project_milestones/1" }.should route_to(:controller => "project_milestones", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/project_milestones/1/edit" }.should route_to(:controller => "project_milestones", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/project_milestones" }.should route_to(:controller => "project_milestones", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/project_milestones/1" }.should route_to(:controller => "project_milestones", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/project_milestones/1" }.should route_to(:controller => "project_milestones", :action => "destroy", :id => "1")
    end

  end
end
