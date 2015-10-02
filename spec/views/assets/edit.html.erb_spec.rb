require 'rails_helper'

RSpec.describe "assets/edit", type: :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      :name => "MyString",
      :description => "MyText",
      :highlights => "MyText",
      :size => "MyString",
      :size_type => "MyString",
      :price => 1,
      :price_psf => 1.5,
      :dnd_price => false,
      :cap_rate => 1.5,
      :occupancy => 1,
      :year_built => "MyString",
      :title => "MyString",
      :visibility => "MyString",
      :ended => false,
      :address => "MyString",
      :address_2 => "MyString",
      :state => "MyString",
      :city => "MyString",
      :zip => "MyString",
      :website => "MyString",
      :country => "MyString",
      :user => nil
    ))
  end

  it "renders the edit asset form" do
    render

    assert_select "form[action=?][method=?]", asset_path(@asset), "post" do

      assert_select "input#asset_name[name=?]", "asset[name]"

      assert_select "textarea#asset_description[name=?]", "asset[description]"

      assert_select "textarea#asset_highlights[name=?]", "asset[highlights]"

      assert_select "input#asset_size[name=?]", "asset[size]"

      assert_select "input#asset_size_type[name=?]", "asset[size_type]"

      assert_select "input#asset_price[name=?]", "asset[price]"

      assert_select "input#asset_price_psf[name=?]", "asset[price_psf]"

      assert_select "input#asset_dnd_price[name=?]", "asset[dnd_price]"

      assert_select "input#asset_cap_rate[name=?]", "asset[cap_rate]"

      assert_select "input#asset_occupancy[name=?]", "asset[occupancy]"

      assert_select "input#asset_year_built[name=?]", "asset[year_built]"

      assert_select "input#asset_title[name=?]", "asset[title]"

      assert_select "input#asset_visibility[name=?]", "asset[visibility]"

      assert_select "input#asset_ended[name=?]", "asset[ended]"

      assert_select "input#asset_address[name=?]", "asset[address]"

      assert_select "input#asset_address_2[name=?]", "asset[address_2]"

      assert_select "input#asset_state[name=?]", "asset[state]"

      assert_select "input#asset_city[name=?]", "asset[city]"

      assert_select "input#asset_zip[name=?]", "asset[zip]"

      assert_select "input#asset_website[name=?]", "asset[website]"

      assert_select "input#asset_country[name=?]", "asset[country]"

      assert_select "input#asset_user_id[name=?]", "asset[user_id]"
    end
  end
end
