require "application_system_test_case"

class SongsTest < ApplicationSystemTestCase
  setup do
    @song = songs(:one)
  end

  test "visiting the index" do
    visit songs_url
    assert_selector "h1", text: "Songs"
  end

  test "creating a Song" do
    visit songs_url
    click_on "New Song"

    fill_in "Cover Url", with: @song.cover_url
    fill_in "Description", with: @song.description
    fill_in "Length", with: @song.length
    fill_in "Played Count", with: @song.played_count
    fill_in "Rating", with: @song.rating
    fill_in "Title", with: @song.title
    click_on "Create Song"

    assert_text "Song was successfully created"
    click_on "Back"
  end

  test "updating a Song" do
    visit songs_url
    click_on "Edit", match: :first

    fill_in "Cover Url", with: @song.cover_url
    fill_in "Description", with: @song.description
    fill_in "Length", with: @song.length
    fill_in "Played Count", with: @song.played_count
    fill_in "Rating", with: @song.rating
    fill_in "Title", with: @song.title
    click_on "Update Song"

    assert_text "Song was successfully updated"
    click_on "Back"
  end

  test "destroying a Song" do
    visit songs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Song was successfully destroyed"
  end
end