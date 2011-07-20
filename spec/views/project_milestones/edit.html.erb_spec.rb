require 'spec_helper'

describe "project_milestones/edit.html.erb" do
  before(:each) do
    @project_milestone = assign(:project_milestone, stub_model(ProjectMilestone,
      :milestone_id => 1,
      :description => "MyString",
      :accomplished => false
    ))
  end

  it "renders the edit project_milestone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_milestones_path(@project_milestone), :method => "post" do
      assert_select "input#project_milestone_milestone_id", :name => "project_milestone[milestone_id]"
      assert_select "input#project_milestone_description", :name => "project_milestone[description]"
      assert_select "input#project_milestone_accomplished", :name => "project_milestone[accomplished]"
    end
  end
end
