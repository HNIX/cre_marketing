require 'rails_helper'

RSpec.describe "assets/index", type: :view do
  before(:each) do
    assign(:assets, [
      Asset.create!(
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
      ),
      Asset.create!(
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
      )
    ])
  end

  it "renders a list of assets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Size Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Year Built".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Visibility".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
