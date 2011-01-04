require 'test_helper'

class TestObj2sControllerTest < ActionController::TestCase
  setup do
    @test_obj2 = test_obj2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_obj2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_obj2" do
    assert_difference('TestObj2.count') do
      post :create, :test_obj2 => @test_obj2.attributes
    end

    assert_redirected_to test_obj2_path(assigns(:test_obj2))
  end

  test "should show test_obj2" do
    get :show, :id => @test_obj2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @test_obj2.to_param
    assert_response :success
  end

  test "should update test_obj2" do
    put :update, :id => @test_obj2.to_param, :test_obj2 => @test_obj2.attributes
    assert_redirected_to test_obj2_path(assigns(:test_obj2))
  end

  test "should destroy test_obj2" do
    assert_difference('TestObj2.count', -1) do
      delete :destroy, :id => @test_obj2.to_param
    end

    assert_redirected_to test_obj2s_path
  end
end
