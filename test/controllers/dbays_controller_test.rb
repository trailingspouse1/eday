require 'test_helper'

class DbaysControllerTest < ActionController::TestCase
  setup do
    @dbay = dbays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dbays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dbay" do
    assert_difference('Dbay.count') do
      post :create, dbay: { description: @dbay.description, price: @dbay.price, title: @dbay.title }
    end

    assert_redirected_to dbay_path(assigns(:dbay))
  end

  test "should show dbay" do
    get :show, id: @dbay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dbay
    assert_response :success
  end

  test "should update dbay" do
    patch :update, id: @dbay, dbay: { description: @dbay.description, price: @dbay.price, title: @dbay.title }
    assert_redirected_to dbay_path(assigns(:dbay))
  end

  test "should destroy dbay" do
    assert_difference('Dbay.count', -1) do
      delete :destroy, id: @dbay
    end

    assert_redirected_to dbays_path
  end
end
