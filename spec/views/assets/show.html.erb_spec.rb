require 'rails_helper'

RSpec.describe "assets/show", type: :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      :name => "Name",
      :description => "MyText",
      :highlights => "MyText",
      :size => "Size",
      :size_type => "Size Type",
      :price => 1,
      :price_psf => 1.5,
      :dnd_price => false,
      :cap_rate => 1.5,
      :occupancy => 2,
      :year_built => "Year Built",
      :title => "Title",
      :visibility => "Visibility",
      :ended => false,
      :address => "Address",
      :address_2 => "Address 2",
      :state => "State",
      :city => "City",
      :zip => "Zip",
      :website => "Website",
      :country => "Country",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Size Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Year Built/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Visibility/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(//)
  end
end
