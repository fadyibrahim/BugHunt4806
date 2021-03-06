require 'test_helper'

class BugsControllerTest < ActionController::TestCase
  setup do
    @bug = bugs(:one)
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :redirect
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bug" do
    delete :destroy, id: @bug
    assert_difference('Bug.count') do
      post :create, bug: { completed: @bug.completed, created: @bug.created, name: @bug.name, points: @bug.points, url: @bug.url }
    end

    assert_redirected_to bug_path(assigns(:bug))
  end

  test "should show bug" do
    get :show, id: @bug
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, id: @bug
    assert_response :success
  end

  test "should update bug" do
    patch :update, id: @bug, bug: { completed: @bug.completed, created: @bug.created, name: @bug.name, points: @bug.points, url: @bug.url }
    assert_redirected_to bug_path(assigns(:bug))
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete :destroy, id: @bug
    end

    assert_redirected_to bugs_path
  end
end
