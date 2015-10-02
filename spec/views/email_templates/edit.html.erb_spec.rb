require 'rails_helper'

RSpec.describe "email_templates/edit", type: :view do
  before(:each) do
    @email_template = assign(:email_template, EmailTemplate.create!(
      :name => "MyString",
      :html => "MyText"
    ))
  end

  it "renders the edit email_template form" do
    render

    assert_select "form[action=?][method=?]", email_template_path(@email_template), "post" do

      assert_select "input#email_template_name[name=?]", "email_template[name]"

      assert_select "textarea#email_template_html[name=?]", "email_template[html]"
    end
  end
end
