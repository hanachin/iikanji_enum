require 'test_helper'

class DraftPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @draft_post = draft_posts(:one)
  end

  test "should get index" do
    get draft_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_draft_post_url
    assert_response :success
  end

  test "should create draft_post" do
    assert_difference('DraftPost.count') do
      post draft_posts_url, params: { draft_post: { body: @draft_post.body, state: @draft_post.state, title: @draft_post.title, type: @draft_post.type } }
    end

    assert_redirected_to draft_post_url(DraftPost.last)
  end

  test "should show draft_post" do
    get draft_post_url(@draft_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_draft_post_url(@draft_post)
    assert_response :success
  end

  test "should update draft_post" do
    patch draft_post_url(@draft_post), params: { draft_post: { body: @draft_post.body, state: @draft_post.state, title: @draft_post.title, type: @draft_post.type } }
    assert_redirected_to draft_post_url(@draft_post)
  end

  test "should destroy draft_post" do
    assert_difference('DraftPost.count', -1) do
      delete draft_post_url(@draft_post)
    end

    assert_redirected_to draft_posts_url
  end
end
