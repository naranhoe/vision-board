require 'test_helper'

class PlanningboardsControllerTest < ActionController::TestCase
  setup do
    @planningboard = planningboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planningboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planningboard" do
    assert_difference('Planningboard.count') do
      post :create, planningboard: { description: @planningboard.description, goal1: @planningboard.goal1, goal2: @planningboard.goal2, goal3: @planningboard.goal3, goal4: @planningboard.goal4, goal5: @planningboard.goal5, name: @planningboard.name, url1: @planningboard.url1, url2: @planningboard.url2, url3: @planningboard.url3, url4: @planningboard.url4, url5: @planningboard.url5 }
    end

    assert_redirected_to planningboard_path(assigns(:planningboard))
  end

  test "should show planningboard" do
    get :show, id: @planningboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planningboard
    assert_response :success
  end

  test "should update planningboard" do
    patch :update, id: @planningboard, planningboard: { description: @planningboard.description, goal1: @planningboard.goal1, goal2: @planningboard.goal2, goal3: @planningboard.goal3, goal4: @planningboard.goal4, goal5: @planningboard.goal5, name: @planningboard.name, url1: @planningboard.url1, url2: @planningboard.url2, url3: @planningboard.url3, url4: @planningboard.url4, url5: @planningboard.url5 }
    assert_redirected_to planningboard_path(assigns(:planningboard))
  end

  test "should destroy planningboard" do
    assert_difference('Planningboard.count', -1) do
      delete :destroy, id: @planningboard
    end

    assert_redirected_to planningboards_path
  end
end
