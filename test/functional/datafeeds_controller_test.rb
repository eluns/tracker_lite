require 'test_helper'

class DatafeedsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datafeeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show datafeed" do
    get :show, :id => datafeeds(:Wind).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => datafeeds(:Wind).id
    assert_response :success
  end

  test "should update datafeed" do
    put :update, :id => datafeeds(:Wind).id, :datafeed => { }
    assert_redirected_to datafeed_path(assigns(:datafeed))
  end

  test "should destroy datafeed" do
    assert_difference('Datafeed.count', -1) do
      delete :destroy, :id => datafeeds(:Wind).id
    end

    assert_redirected_to datafeeds_path
  end
end
