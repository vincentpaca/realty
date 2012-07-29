require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :property_type => 1,
      :advertised_as => "MyString",
      :price => "9.99",
      :location => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_property_type", :name => "post[property_type]"
      assert_select "input#post_advertised_as", :name => "post[advertised_as]"
      assert_select "input#post_price", :name => "post[price]"
      assert_select "input#post_location", :name => "post[location]"
      assert_select "textarea#post_description", :name => "post[description]"
    end
  end
end
