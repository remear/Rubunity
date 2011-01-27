require 'spec_helper'

describe "bookmarks/show.html.erb" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark))
  end

  it "renders attributes in <p>" do
    render
  end
end
