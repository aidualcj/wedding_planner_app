require "application_system_test_case"

class GuestsTest < ApplicationSystemTestCase
  setup do
    @guest = guests(:one)
  end

  test "visiting the index" do
    visit guests_url
    assert_selector "h1", text: "Guests"
  end

  test "should create guest" do
    visit guests_url
    click_on "New guest"

    fill_in "Diet", with: @guest.diet
    fill_in "Email", with: @guest.email
    fill_in "Event", with: @guest.event_id
    fill_in "First name", with: @guest.first_name
    fill_in "Group", with: @guest.group
    fill_in "Last name", with: @guest.last_name
    fill_in "Phone number", with: @guest.phone_number
    fill_in "Primary guest", with: @guest.primary_guest_id
    fill_in "Rsvp status", with: @guest.rsvp_status
    click_on "Create Guest"

    assert_text "Guest was successfully created"
    click_on "Back"
  end

  test "should update Guest" do
    visit guest_url(@guest)
    click_on "Edit this guest", match: :first

    fill_in "Diet", with: @guest.diet
    fill_in "Email", with: @guest.email
    fill_in "Event", with: @guest.event_id
    fill_in "First name", with: @guest.first_name
    fill_in "Group", with: @guest.group
    fill_in "Last name", with: @guest.last_name
    fill_in "Phone number", with: @guest.phone_number
    fill_in "Primary guest", with: @guest.primary_guest_id
    fill_in "Rsvp status", with: @guest.rsvp_status
    click_on "Update Guest"

    assert_text "Guest was successfully updated"
    click_on "Back"
  end

  test "should destroy Guest" do
    visit guest_url(@guest)
    click_on "Destroy this guest", match: :first

    assert_text "Guest was successfully destroyed"
  end
end
