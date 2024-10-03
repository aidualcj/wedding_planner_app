require "test_helper"

class GuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guest = guests(:one)
  end

  test "should get index" do
    get guests_url
    assert_response :success
  end

  test "should get new" do
    get new_guest_url
    assert_response :success
  end

  test "should create guest" do
    assert_difference("Guest.count") do
      post guests_url, params: { guest: { diet: @guest.diet, email: @guest.email, event_id: @guest.event_id, first_name: @guest.first_name, group: @guest.group, last_name: @guest.last_name, phone_number: @guest.phone_number, primary_guest_id: @guest.primary_guest_id, rsvp_status: @guest.rsvp_status } }
    end

    assert_redirected_to guest_url(Guest.last)
  end

  test "should show guest" do
    get guest_url(@guest)
    assert_response :success
  end

  test "should get edit" do
    get edit_guest_url(@guest)
    assert_response :success
  end

  test "should update guest" do
    patch guest_url(@guest), params: { guest: { diet: @guest.diet, email: @guest.email, event_id: @guest.event_id, first_name: @guest.first_name, group: @guest.group, last_name: @guest.last_name, phone_number: @guest.phone_number, primary_guest_id: @guest.primary_guest_id, rsvp_status: @guest.rsvp_status } }
    assert_redirected_to guest_url(@guest)
  end

  test "should destroy guest" do
    assert_difference("Guest.count", -1) do
      delete guest_url(@guest)
    end

    assert_redirected_to guests_url
  end
end
