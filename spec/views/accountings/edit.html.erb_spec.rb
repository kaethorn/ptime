require 'spec_helper'

describe "accountings/edit.html.erb" do
  before(:each) do
    @accounting = assign(:accounting, stub_model(Accounting,
      :description => "MyString",
      :amount => 1,
      :project_id => 1,
      :sent => false,
      :payed => false,
      :link => "MyString"
    ))
  end

  it "renders the edit accounting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accountings_path(@accounting), :method => "post" do
      assert_select "input#accounting_description", :name => "accounting[description]"
      assert_select "input#accounting_amount", :name => "accounting[amount]"
      assert_select "input#accounting_project_id", :name => "accounting[project_id]"
      assert_select "input#accounting_sent", :name => "accounting[sent]"
      assert_select "input#accounting_payed", :name => "accounting[payed]"
      assert_select "input#accounting_link", :name => "accounting[link]"
    end
  end
end
