require 'test_helper'

class OrbituarysitesControllerTest < ActionController::TestCase
  setup do
    @orbituarysite = orbituarysites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orbituarysites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orbituarysite" do
    assert_difference('Orbituarysite.count') do
      post :create, orbituarysite: { birth_place: @orbituarysite.birth_place, death_place: @orbituarysite.death_place, dob: @orbituarysite.dob, dod: @orbituarysite.dod, full_name: @orbituarysite.full_name, living_place: @orbituarysite.living_place, orbiturerimage: @orbituarysite.orbiturerimage, salutation: @orbituarysite.salutation, user_id: @orbituarysite.user_id }
    end

    assert_redirected_to orbituarysite_path(assigns(:orbituarysite))
  end

  test "should show orbituarysite" do
    get :show, id: @orbituarysite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orbituarysite
    assert_response :success
  end

  test "should update orbituarysite" do
    put :update, id: @orbituarysite, orbituarysite: { birth_place: @orbituarysite.birth_place, death_place: @orbituarysite.death_place, dob: @orbituarysite.dob, dod: @orbituarysite.dod, full_name: @orbituarysite.full_name, living_place: @orbituarysite.living_place, orbiturerimage: @orbituarysite.orbiturerimage, salutation: @orbituarysite.salutation, user_id: @orbituarysite.user_id }
    assert_redirected_to orbituarysite_path(assigns(:orbituarysite))
  end

  test "should destroy orbituarysite" do
    assert_difference('Orbituarysite.count', -1) do
      delete :destroy, id: @orbituarysite
    end

    assert_redirected_to orbituarysites_path
  end
end
