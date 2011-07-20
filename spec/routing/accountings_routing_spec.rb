require "spec_helper"

describe AccountingsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/accountings" }.should route_to(:controller => "accountings", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/accountings/new" }.should route_to(:controller => "accountings", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/accountings/1" }.should route_to(:controller => "accountings", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/accountings/1/edit" }.should route_to(:controller => "accountings", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/accountings" }.should route_to(:controller => "accountings", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/accountings/1" }.should route_to(:controller => "accountings", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/accountings/1" }.should route_to(:controller => "accountings", :action => "destroy", :id => "1")
    end

  end
end
