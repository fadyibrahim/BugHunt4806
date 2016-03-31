require 'test_helper'

class BugCreationsControllerTest < ActionController::TestCase
  setup do
    @bug_creation = bug_creations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bug_creations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bug_creation" do
    assert_difference('BugCreation.count') do
      post :create, bug_creation: { timestamp: @bug_creation.timestamp }
    end

    assert_redirected_to bug_creation_path(assigns(:bug_creation))
  end

  test "should show bug_creation" do
    get :show, id: @bug_creation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bug_creation
    assert_response :success
  end

  test "should update bug_creation" do
    patch :update, id: @bug_creation, bug_creation: { timestamp: @bug_creation.timestamp }
    assert_redirected_to bug_creation_path(assigns(:bug_creation))
  end

  test "should destroy bug_creation" do
    assert_difference('BugCreation.count', -1) do
      delete :destroy, id: @bug_creation
    end

    assert_redirected_to bug_creations_path
  end
end
