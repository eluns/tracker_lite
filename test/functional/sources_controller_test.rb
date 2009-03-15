require 'test_helper'

class SourcesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show source" do
    get :show, :id => sources(:Wind).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sources(:Wind).id
    assert_response :success
  end

  test "should update source" do
    put :update, :id => sources(:Wind).id, :source => { }
    assert_redirected_to source_path(assigns(:source))
  end

  test "should destroy source" do
    assert_difference('Source.count', -1) do
      delete :destroy, :id => sources(:Wind).id
    end

    assert_redirected_to sources_path
  end
end
