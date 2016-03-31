require 'test_helper'

class BugResolutionsControllerTest < ActionController::TestCase
  setup do
    @bug_resolution = bug_resolutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bug_resolutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bug_resolution" do
    assert_difference('BugResolution.count') do
      post :create, bug_resolution: { timestamp: @bug_resolution.timestamp }
    end

    assert_redirected_to bug_resolution_path(assigns(:bug_resolution))
  end

  test "should show bug_resolution" do
    get :show, id: @bug_resolution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bug_resolution
    assert_response :success
  end

  test "should update bug_resolution" do
    patch :update, id: @bug_resolution, bug_resolution: { timestamp: @bug_resolution.timestamp }
    assert_redirected_to bug_resolution_path(assigns(:bug_resolution))
  end

  test "should destroy bug_resolution" do
    assert_difference('BugResolution.count', -1) do
      delete :destroy, id: @bug_resolution
    end

    assert_redirected_to bug_resolutions_path
  end
end
