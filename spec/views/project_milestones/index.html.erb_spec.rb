require 'spec_helper'

describe "project_milestones/index.html.erb" do
  before(:each) do
    assign(:project_milestones, [
      stub_model(ProjectMilestone,
        :milestone_id => 1,
        :description => "Description",
        :accomplished => false
      ),
      stub_model(ProjectMilestone,
        :milestone_id => 1,
        :description => "Description",
        :accomplished => false
      )
    ])
  end

  it "renders a list of project_milestones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
