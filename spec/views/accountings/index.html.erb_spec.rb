require 'spec_helper'

describe "accountings/index.html.erb" do
  before(:each) do
    assign(:accountings, [
      stub_model(Accounting,
        :description => "Description",
        :amount => 1,
        :project_id => 1,
        :sent => false,
        :payed => false,
        :link => "Link"
      ),
      stub_model(Accounting,
        :description => "Description",
        :amount => 1,
        :project_id => 1,
        :sent => false,
        :payed => false,
        :link => "Link"
      )
    ])
  end

  it "renders a list of accountings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
