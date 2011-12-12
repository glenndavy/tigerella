require 'test_helper'

class DayListsControllerTest < ActionController::TestCase
  setup do
    @day_list = day_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:day_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day_list" do
    assert_difference('DayList.count') do
      post :create, day_list: @day_list.attributes
    end

    assert_redirected_to day_list_path(assigns(:day_list))
  end

  test "should show day_list" do
    get :show, id: @day_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day_list.to_param
    assert_response :success
  end

  test "should update day_list" do
    put :update, id: @day_list.to_param, day_list: @day_list.attributes
    assert_redirected_to day_list_path(assigns(:day_list))
  end

  test "should destroy day_list" do
    assert_difference('DayList.count', -1) do
      delete :destroy, id: @day_list.to_param
    end

    assert_redirected_to day_lists_path
  end
end
