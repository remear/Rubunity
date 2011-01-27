require 'spec_helper'

describe "bookmarks/edit.html.erb" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark))
  end

  it "renders the edit bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookmark_path(@bookmark), :method => "post" do
    end
  end
end
