require 'test_helper'

class IssuesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show issue" do
    get :show, :id => issues(:Wind).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => issues(:Wind).id
    assert_response :success
  end

  test "should update issue" do
    put :update, :id => issues(:Wind).id, :issue => { }
    assert_redirected_to issue_path(assigns(:issue))
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete :destroy, :id => issues(:Wind).id
    end

    assert_redirected_to issues_path
  end
  
  test "order by issue name desc" do
    get :index, :order_by => 'datafeed', :direction => 'desc'
    assert datafeed_list = assigns(:datafeeds)
    assert_equal datafeed_list, datafeed_list.sort_by { |datafeed| datafeed.name }.reverse
  end
end
