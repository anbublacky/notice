require 'test_helper'

class NoticeEventContactsControllerTest < ActionController::TestCase
  setup do
    @notice_event_contact = notice_event_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notice_event_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notice_event_contact" do
    assert_difference('NoticeEventContact.count') do
      post :create, notice_event_contact: { country: @notice_event_contact.country, mobile: @notice_event_contact.mobile, name: @notice_event_contact.name, notice_display_id: @notice_event_contact.notice_display_id, telephone: @notice_event_contact.telephone }
    end

    assert_redirected_to notice_event_contact_path(assigns(:notice_event_contact))
  end

  test "should show notice_event_contact" do
    get :show, id: @notice_event_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notice_event_contact
    assert_response :success
  end

  test "should update notice_event_contact" do
    put :update, id: @notice_event_contact, notice_event_contact: { country: @notice_event_contact.country, mobile: @notice_event_contact.mobile, name: @notice_event_contact.name, notice_display_id: @notice_event_contact.notice_display_id, telephone: @notice_event_contact.telephone }
    assert_redirected_to notice_event_contact_path(assigns(:notice_event_contact))
  end

  test "should destroy notice_event_contact" do
    assert_difference('NoticeEventContact.count', -1) do
      delete :destroy, id: @notice_event_contact
    end

    assert_redirected_to notice_event_contacts_path
  end
end
