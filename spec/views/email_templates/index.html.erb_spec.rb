require 'rails_helper'

RSpec.describe "email_templates/index", type: :view do
  before(:each) do
    assign(:email_templates, [
      EmailTemplate.create!(
        :name => "Name",
        :html => "MyText"
      ),
      EmailTemplate.create!(
        :name => "Name",
        :html => "MyText"
      )
    ])
  end

  it "renders a list of email_templates" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
