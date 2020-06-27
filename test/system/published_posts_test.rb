require "application_system_test_case"

class PublishedPostsTest < ApplicationSystemTestCase
  setup do
    @published_post = published_posts(:one)
  end

  test "visiting the index" do
    visit published_posts_url
    assert_selector "h1", text: "Published Posts"
  end

  test "creating a Published post" do
    visit published_posts_url
    click_on "New Published Post"

    fill_in "Body", with: @published_post.body
    fill_in "State", with: @published_post.state
    fill_in "Title", with: @published_post.title
    fill_in "Type", with: @published_post.type
    click_on "Create Published post"

    assert_text "Published post was successfully created"
    click_on "Back"
  end

  test "updating a Published post" do
    visit published_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @published_post.body
    fill_in "State", with: @published_post.state
    fill_in "Title", with: @published_post.title
    fill_in "Type", with: @published_post.type
    click_on "Update Published post"

    assert_text "Published post was successfully updated"
    click_on "Back"
  end

  test "destroying a Published post" do
    visit published_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Published post was successfully destroyed"
  end
end
