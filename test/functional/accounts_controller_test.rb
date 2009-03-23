require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show account" do
    get :show, :id => accounts(:Wind).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => accounts(:Wind).id
    assert_response :success
  end

  test "should update account" do
    put :update, :id => accounts(:Wind).id, :account => { }
    assert_redirected_to account_path(assigns(:account))
  end

  test "order by account name desc" do
    get :index, :order_by => 'name', :direction => 'desc'
    assert account_list = assigns(:accounts)
    assert_equal account_list, account_list.sort_by { |account| account.name }.reverse
  end
end
