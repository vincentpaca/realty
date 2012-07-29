require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :property_type => 1,
        :advertised_as => "Advertised As",
        :price => "9.99",
        :location => "Location",
        :description => "MyText"
      ),
      stub_model(Post,
        :property_type => 1,
        :advertised_as => "Advertised As",
        :price => "9.99",
        :location => "Location",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Advertised As".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
