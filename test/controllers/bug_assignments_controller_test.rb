require 'test_helper'

class BugAssignmentsControllerTest < ActionController::TestCase
  setup do
    @bug_assignment = bug_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bug_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bug_assignment" do
    assert_difference('BugAssignment.count') do
      post :create, bug_assignment: { timestamp: @bug_assignment.timestamp }
    end

    assert_redirected_to bug_assignment_path(assigns(:bug_assignment))
  end

  test "should show bug_assignment" do
    get :show, id: @bug_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bug_assignment
    assert_response :success
  end

  test "should update bug_assignment" do
    patch :update, id: @bug_assignment, bug_assignment: { timestamp: @bug_assignment.timestamp }
    assert_redirected_to bug_assignment_path(assigns(:bug_assignment))
  end

  test "should destroy bug_assignment" do
    assert_difference('BugAssignment.count', -1) do
      delete :destroy, id: @bug_assignment
    end

    assert_redirected_to bug_assignments_path
  end
end
