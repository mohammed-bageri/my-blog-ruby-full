require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? is true for draft post" do
    assert BlogPost.new(published_at: nil).draft?
  end

  test "published? is true for published post" do
    assert BlogPost.new(published_at: Time.new(2024, 5, 20)).published?
  end

  test "scheduled? is true for scheduled post" do
    assert BlogPost.new(published_at: Time.new(2024, 7, 20)).scheduled?
  end
end
