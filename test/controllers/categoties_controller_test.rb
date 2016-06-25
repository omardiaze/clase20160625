require 'test_helper'

class CategotiesControllerTest < ActionController::TestCase
  setup do
    @categoty = categoties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoty" do
    assert_difference('Categoty.count') do
      post :create, categoty: { description: @categoty.description, name: @categoty.name }
    end

    assert_redirected_to categoty_path(assigns(:categoty))
  end

  test "should show categoty" do
    get :show, id: @categoty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoty
    assert_response :success
  end

  test "should update categoty" do
    patch :update, id: @categoty, categoty: { description: @categoty.description, name: @categoty.name }
    assert_redirected_to categoty_path(assigns(:categoty))
  end

  test "should destroy categoty" do
    assert_difference('Categoty.count', -1) do
      delete :destroy, id: @categoty
    end

    assert_redirected_to categoties_path
  end
end
