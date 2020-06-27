require "application_system_test_case"

class DraftPostsTest < ApplicationSystemTestCase
  setup do
    @draft_post = draft_posts(:one)
  end

  test "visiting the index" do
    visit draft_posts_url
    assert_selector "h1", text: "Draft Posts"
  end

  test "creating a Draft post" do
    visit draft_posts_url
    click_on "New Draft Post"

    fill_in "Body", with: @draft_post.body
    fill_in "State", with: @draft_post.state
    fill_in "Title", with: @draft_post.title
    fill_in "Type", with: @draft_post.type
    click_on "Create Draft post"

    assert_text "Draft post was successfully created"
    click_on "Back"
  end

  test "updating a Draft post" do
    visit draft_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @draft_post.body
    fill_in "State", with: @draft_post.state
    fill_in "Title", with: @draft_post.title
    fill_in "Type", with: @draft_post.type
    click_on "Update Draft post"

    assert_text "Draft post was successfully updated"
    click_on "Back"
  end

  test "destroying a Draft post" do
    visit draft_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Draft post was successfully destroyed"
  end
end
