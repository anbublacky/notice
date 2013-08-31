require 'test_helper'

class NoticeEventPlacesControllerTest < ActionController::TestCase
  setup do
    @notice_event_place = notice_event_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notice_event_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notice_event_place" do
    assert_difference('NoticeEventPlace.count') do
      post :create, notice_event_place: { address1: @notice_event_place.address1, address2: @notice_event_place.address2, city: @notice_event_place.city, country: @notice_event_place.country, county: @notice_event_place.county, event_type: @notice_event_place.event_type, eventdate: @notice_event_place.eventdate, eventtime: @notice_event_place.eventtime, notice_display_id: @notice_event_place.notice_display_id, postcode: @notice_event_place.postcode }
    end

    assert_redirected_to notice_event_place_path(assigns(:notice_event_place))
  end

  test "should show notice_event_place" do
    get :show, id: @notice_event_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notice_event_place
    assert_response :success
  end

  test "should update notice_event_place" do
    put :update, id: @notice_event_place, notice_event_place: { address1: @notice_event_place.address1, address2: @notice_event_place.address2, city: @notice_event_place.city, country: @notice_event_place.country, county: @notice_event_place.county, event_type: @notice_event_place.event_type, eventdate: @notice_event_place.eventdate, eventtime: @notice_event_place.eventtime, notice_display_id: @notice_event_place.notice_display_id, postcode: @notice_event_place.postcode }
    assert_redirected_to notice_event_place_path(assigns(:notice_event_place))
  end

  test "should destroy notice_event_place" do
    assert_difference('NoticeEventPlace.count', -1) do
      delete :destroy, id: @notice_event_place
    end

    assert_redirected_to notice_event_places_path
  end
end
