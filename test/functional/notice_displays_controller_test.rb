require 'test_helper'

class NoticeDisplaysControllerTest < ActionController::TestCase
  setup do
    @notice_display = notice_displays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notice_displays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notice_display" do
    assert_difference('NoticeDisplay.count') do
      post :create, notice_display: { message: @notice_display.message, notice_type: @notice_display.notice_type, orbituarysite_id: @notice_display.orbituarysite_id, posted_by: @notice_display.posted_by }
    end

    assert_redirected_to notice_display_path(assigns(:notice_display))
  end

  test "should show notice_display" do
    get :show, id: @notice_display
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notice_display
    assert_response :success
  end

  test "should update notice_display" do
    put :update, id: @notice_display, notice_display: { message: @notice_display.message, notice_type: @notice_display.notice_type, orbituarysite_id: @notice_display.orbituarysite_id, posted_by: @notice_display.posted_by }
    assert_redirected_to notice_display_path(assigns(:notice_display))
  end

  test "should destroy notice_display" do
    assert_difference('NoticeDisplay.count', -1) do
      delete :destroy, id: @notice_display
    end

    assert_redirected_to notice_displays_path
  end
end
