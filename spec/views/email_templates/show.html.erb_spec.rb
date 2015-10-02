require 'rails_helper'

RSpec.describe "email_templates/show", type: :view do
  before(:each) do
    @email_template = assign(:email_template, EmailTemplate.create!(
      :name => "Name",
      :html => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
