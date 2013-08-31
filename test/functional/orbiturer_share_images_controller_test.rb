require 'test_helper'

class OrbiturerShareImagesControllerTest < ActionController::TestCase
  setup do
    @orbiturer_share_image = orbiturer_share_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orbiturer_share_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orbiturer_share_image" do
    assert_difference('OrbiturerShareImage.count') do
      post :create, orbiturer_share_image: { orbituarysite_id: @orbiturer_share_image.orbituarysite_id, orbiturer_other_images: @orbiturer_share_image.orbiturer_other_images }
    end

    assert_redirected_to orbiturer_share_image_path(assigns(:orbiturer_share_image))
  end

  test "should show orbiturer_share_image" do
    get :show, id: @orbiturer_share_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orbiturer_share_image
    assert_response :success
  end

  test "should update orbiturer_share_image" do
    put :update, id: @orbiturer_share_image, orbiturer_share_image: { orbituarysite_id: @orbiturer_share_image.orbituarysite_id, orbiturer_other_images: @orbiturer_share_image.orbiturer_other_images }
    assert_redirected_to orbiturer_share_image_path(assigns(:orbiturer_share_image))
  end

  test "should destroy orbiturer_share_image" do
    assert_difference('OrbiturerShareImage.count', -1) do
      delete :destroy, id: @orbiturer_share_image
    end

    assert_redirected_to orbiturer_share_images_path
  end
end
