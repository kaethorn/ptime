require 'spec_helper'

describe "plans/index.html.erb" do
  before(:each) do
    assign(:plans, [
      stub_model(Plan,
        :user_id => 1,
        :project_id => 1,
        :amount => 1
      ),
      stub_model(Plan,
        :user_id => 1,
        :project_id => 1,
        :amount => 1
      )
    ])
  end

  it "renders a list of plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
