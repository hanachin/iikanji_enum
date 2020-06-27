require 'test_helper'

class PublishedPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @published_post = published_posts(:one)
  end

  test "should get index" do
    get published_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_published_post_url
    assert_response :success
  end

  test "should create published_post" do
    assert_difference('PublishedPost.count') do
      post published_posts_url, params: { published_post: { body: @published_post.body, state: @published_post.state, title: @published_post.title, type: @published_post.type } }
    end

    assert_redirected_to published_post_url(PublishedPost.last)
  end

  test "should show published_post" do
    get published_post_url(@published_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_published_post_url(@published_post)
    assert_response :success
  end

  test "should update published_post" do
    patch published_post_url(@published_post), params: { published_post: { body: @published_post.body, state: @published_post.state, title: @published_post.title, type: @published_post.type } }
    assert_redirected_to published_post_url(@published_post)
  end

  test "should destroy published_post" do
    assert_difference('PublishedPost.count', -1) do
      delete published_post_url(@published_post)
    end

    assert_redirected_to published_posts_url
  end
end
