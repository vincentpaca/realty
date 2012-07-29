require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :property_type => 1,
      :advertised_as => "Advertised As",
      :price => "9.99",
      :location => "Location",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Advertised As/)
    rendered.should match(/9.99/)
    rendered.should match(/Location/)
    rendered.should match(/MyText/)
  end
end
