require 'rails_helper'

RSpec.describe "email_templates/new", type: :view do
  before(:each) do
    assign(:email_template, EmailTemplate.new(
      :name => "MyString",
      :html => "MyText"
    ))
  end

  it "renders new email_template form" do
    render

    assert_select "form[action=?][method=?]", email_templates_path, "post" do

      assert_select "input#email_template_name[name=?]", "email_template[name]"

      assert_select "textarea#email_template_html[name=?]", "email_template[html]"
    end
  end
end
