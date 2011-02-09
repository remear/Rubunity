require 'spec_helper'

describe "comments/new.html.erb" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :user => nil,
      :title => "MyString",
      :body => "MyText",
      :commmentable => nil,
      :commentable_type => "MyString"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_user", :name => "comment[user]"
      assert_select "input#comment_title", :name => "comment[title]"
      assert_select "textarea#comment_body", :name => "comment[body]"
      assert_select "input#comment_commmentable", :name => "comment[commmentable]"
      assert_select "input#comment_commentable_type", :name => "comment[commentable_type]"
    end
  end
end
