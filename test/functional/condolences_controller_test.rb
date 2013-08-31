require 'test_helper'

class CondolencesControllerTest < ActionController::TestCase
  setup do
    @condolence = condolences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condolences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condolence" do
    assert_difference('Condolence.count') do
      post :create, condolence: { address: @condolence.address, country: @condolence.country, flower: @condolence.flower, name: @condolence.name, orbituarysite_id: @condolence.orbituarysite_id, share_content: @condolence.share_content }
    end

    assert_redirected_to condolence_path(assigns(:condolence))
  end

  test "should show condolence" do
    get :show, id: @condolence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @condolence
    assert_response :success
  end

  test "should update condolence" do
    put :update, id: @condolence, condolence: { address: @condolence.address, country: @condolence.country, flower: @condolence.flower, name: @condolence.name, orbituarysite_id: @condolence.orbituarysite_id, share_content: @condolence.share_content }
    assert_redirected_to condolence_path(assigns(:condolence))
  end

  test "should destroy condolence" do
    assert_difference('Condolence.count', -1) do
      delete :destroy, id: @condolence
    end

    assert_redirected_to condolences_path
  end
end
