require 'test_helper'

class HuntsControllerTest < ActionController::TestCase
  setup do
    @hunt = hunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hunt" do
    delete :destroy, id: @hunt
    assert_difference('Hunt.count') do
      post :create, hunt: { description: @hunt.description, end: @hunt.end, percentage: @hunt.percentage, start: @hunt.start, url: @hunt.url }
    end

    assert_redirected_to hunt_path(assigns(:hunt))
  end

  test "should show hunt" do
    get :show, id: @hunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hunt
    assert_response :success
  end

  test "should update hunt" do
    patch :update, id: @hunt, hunt: { description: @hunt.description, end: @hunt.end, percentage: @hunt.percentage, start: @hunt.start, url: @hunt.url }
    assert_redirected_to hunt_path(assigns(:hunt))
  end

  test "should destroy hunt" do
    assert_difference('Hunt.count', -1) do
      delete :destroy, id: @hunt
    end

    assert_redirected_to hunts_path
  end
end
