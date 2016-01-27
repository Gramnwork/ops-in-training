require 'test_helper'

class UserDiariesControllerTest < ActionController::TestCase
  setup do
    @user_diary = user_diaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_diaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_diary" do
    assert_difference('UserDiary.count') do
      post :create, user_diary: { diary_content: @user_diary.diary_content, diary_title: @user_diary.diary_title }
    end

    assert_redirected_to user_diary_path(assigns(:user_diary))
  end

  test "should show user_diary" do
    get :show, id: @user_diary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_diary
    assert_response :success
  end

  test "should update user_diary" do
    patch :update, id: @user_diary, user_diary: { diary_content: @user_diary.diary_content, diary_title: @user_diary.diary_title }
    assert_redirected_to user_diary_path(assigns(:user_diary))
  end

  test "should destroy user_diary" do
    assert_difference('UserDiary.count', -1) do
      delete :destroy, id: @user_diary
    end

    assert_redirected_to user_diaries_path
  end
end
