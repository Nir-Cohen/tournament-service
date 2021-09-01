require "application_system_test_case"

class TournamnetsTest < ApplicationSystemTestCase
  setup do
    @tournamnet = tournamnets(:one)
  end

  test "visiting the index" do
    visit tournamnets_url
    assert_selector "h1", text: "Tournamnets"
  end

  test "creating a Tournamnet" do
    visit tournamnets_url
    click_on "New Tournamnet"

    fill_in "Enddate", with: @tournamnet.endDate
    fill_in "Results", with: @tournamnet.results
    fill_in "Startdate", with: @tournamnet.startDate
    click_on "Create Tournamnet"

    assert_text "Tournamnet was successfully created"
    click_on "Back"
  end

  test "updating a Tournamnet" do
    visit tournamnets_url
    click_on "Edit", match: :first

    fill_in "Enddate", with: @tournamnet.endDate
    fill_in "Results", with: @tournamnet.results
    fill_in "Startdate", with: @tournamnet.startDate
    click_on "Update Tournamnet"

    assert_text "Tournamnet was successfully updated"
    click_on "Back"
  end

  test "destroying a Tournamnet" do
    visit tournamnets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tournamnet was successfully destroyed"
  end
end
