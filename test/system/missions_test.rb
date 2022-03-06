require "application_system_test_case"

class MissionsTest < ApplicationSystemTestCase
  setup do
    @mission = missions(:one)
  end

  test "visiting the index" do
    visit missions_url
    assert_selector "h1", text: "Missions"
  end

  test "should create mission" do
    visit missions_url
    click_on "New mission"

    fill_in "Attribut", with: @mission.attribut
    fill_in "Description", with: @mission.description
    fill_in "Finishdate", with: @mission.finishDate
    fill_in "Startdate", with: @mission.startDate
    fill_in "Status", with: @mission.status
    fill_in "Team", with: @mission.team
    fill_in "Title", with: @mission.title
    click_on "Create Mission"

    assert_text "Mission was successfully created"
    click_on "Back"
  end

  test "should update Mission" do
    visit mission_url(@mission)
    click_on "Edit this mission", match: :first

    fill_in "Attribut", with: @mission.attribut
    fill_in "Description", with: @mission.description
    fill_in "Finishdate", with: @mission.finishDate
    fill_in "Startdate", with: @mission.startDate
    fill_in "Status", with: @mission.status
    fill_in "Team", with: @mission.team
    fill_in "Title", with: @mission.title
    click_on "Update Mission"

    assert_text "Mission was successfully updated"
    click_on "Back"
  end

  test "should destroy Mission" do
    visit mission_url(@mission)
    click_on "Destroy this mission", match: :first

    assert_text "Mission was successfully destroyed"
  end
end
