require 'spec_helper'

describe "bookmarks/index.html.erb" do
  before(:each) do
    assign(:bookmarks, [
      stub_model(Bookmark),
      stub_model(Bookmark)
    ])
  end

  it "renders a list of bookmarks" do
    render
  end
end
