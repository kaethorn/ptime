require 'spec_helper'

describe "plans/edit.html.erb" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :user_id => 1,
      :project_id => 1,
      :amount => 1
    ))
  end

  it "renders the edit plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plans_path(@plan), :method => "post" do
      assert_select "input#plan_user_id", :name => "plan[user_id]"
      assert_select "input#plan_project_id", :name => "plan[project_id]"
      assert_select "input#plan_amount", :name => "plan[amount]"
    end
  end
end
