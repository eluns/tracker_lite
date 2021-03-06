require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show contact" do
    get :show, :id => contacts(:Wind).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => contacts(:Wind).id
    assert_response :success
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, :id => contacts(:Wind).id
    end

    assert_redirected_to contacts_path
  end
  
  test "order by contact name desc" do
    get :index, :order_by => 'account', :direction => 'desc'
    assert contact_list = assigns(:contacts)
    assert_equal contact_list, contact_list.sort_by { |contact| contact.name }.reverse
  end
end
