require 'spec_helper'

describe "project_milestones/show.html.erb" do
  before(:each) do
    @project_milestone = assign(:project_milestone, stub_model(ProjectMilestone,
      :milestone_id => 1,
      :description => "Description",
      :accomplished => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
