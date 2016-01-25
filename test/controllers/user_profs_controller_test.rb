require 'test_helper'

class UserProfsControllerTest < ActionController::TestCase
  setup do
    @user_prof = user_profs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_prof" do
    assert_difference('UserProf.count') do
      post :create, user_prof: { age: @user_prof.age, male: @user_prof.male, name: @user_prof.name }
    end

    assert_redirected_to user_prof_path(assigns(:user_prof))
  end

  test "should show user_prof" do
    get :show, id: @user_prof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_prof
    assert_response :success
  end

  test "should update user_prof" do
    patch :update, id: @user_prof, user_prof: { age: @user_prof.age, male: @user_prof.male, name: @user_prof.name }
    assert_redirected_to user_prof_path(assigns(:user_prof))
  end

  test "should destroy user_prof" do
    assert_difference('UserProf.count', -1) do
      delete :destroy, id: @user_prof
    end

    assert_redirected_to user_profs_path
  end
end
