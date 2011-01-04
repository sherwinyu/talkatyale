require 'test_helper'

class TestObjsControllerTest < ActionController::TestCase
  setup do
    @test_obj = test_objs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_objs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_obj" do
    assert_difference('TestObj.count') do
      post :create, :test_obj => @test_obj.attributes
    end

    assert_redirected_to test_obj_path(assigns(:test_obj))
  end

  test "should show test_obj" do
    get :show, :id => @test_obj.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @test_obj.to_param
    assert_response :success
  end

  test "should update test_obj" do
    put :update, :id => @test_obj.to_param, :test_obj => @test_obj.attributes
    assert_redirected_to test_obj_path(assigns(:test_obj))
  end

  test "should destroy test_obj" do
    assert_difference('TestObj.count', -1) do
      delete :destroy, :id => @test_obj.to_param
    end

    assert_redirected_to test_objs_path
  end
end
