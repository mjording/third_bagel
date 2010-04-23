require 'test_helper'

class BagelsControllerTest < ActionController::TestCase
  setup do
    @bagel = bagels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bagels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bagel" do
    assert_difference('Bagel.count') do
      post :create, :bagel => @bagel.attributes
    end

    assert_redirected_to bagel_path(assigns(:bagel))
  end

  test "should show bagel" do
    get :show, :id => @bagel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bagel.to_param
    assert_response :success
  end

  test "should update bagel" do
    put :update, :id => @bagel.to_param, :bagel => @bagel.attributes
    assert_redirected_to bagel_path(assigns(:bagel))
  end

  test "should destroy bagel" do
    assert_difference('Bagel.count', -1) do
      delete :destroy, :id => @bagel.to_param
    end

    assert_redirected_to bagels_path
  end
end
