require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { active: @user.active, branch_id: @user.branch_id, created_by: @user.created_by, department_id: @user.department_id, email_address: @user.email_address, first_name: @user.first_name, hashed_password: @user.hashed_password, last_name: @user.last_name, updated_by: @user.updated_by, user_name: @user.user_name } }
    end

    assert_redirected_to user_path(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { active: @user.active, branch_id: @user.branch_id, created_by: @user.created_by, department_id: @user.department_id, email_address: @user.email_address, first_name: @user.first_name, hashed_password: @user.hashed_password, last_name: @user.last_name, updated_by: @user.updated_by, user_name: @user.user_name } }
    assert_redirected_to user_path(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_path
  end
end
