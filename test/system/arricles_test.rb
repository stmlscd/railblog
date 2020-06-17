require "application_system_test_case"

class ArriclesTest < ApplicationSystemTestCase
  setup do
    @arricle = arricles(:one)
  end

  test "visiting the index" do
    visit arricles_url
    assert_selector "h1", text: "Arricles"
  end

  test "creating a Arricle" do
    visit arricles_url
    click_on "New Arricle"

    fill_in "Description", with: @arricle.description
    fill_in "Title", with: @arricle.title
    click_on "Create Arricle"

    assert_text "Arricle was successfully created"
    click_on "Back"
  end

  test "updating a Arricle" do
    visit arricles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @arricle.description
    fill_in "Title", with: @arricle.title
    click_on "Update Arricle"

    assert_text "Arricle was successfully updated"
    click_on "Back"
  end

  test "destroying a Arricle" do
    visit arricles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arricle was successfully destroyed"
  end
end
