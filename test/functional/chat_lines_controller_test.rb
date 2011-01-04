require 'test_helper'

class ChatLinesControllerTest < ActionController::TestCase
  setup do
    @chat_line = chat_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chat_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chat_line" do
    assert_difference('ChatLine.count') do
      post :create, :chat_line => @chat_line.attributes
    end

    assert_redirected_to chat_line_path(assigns(:chat_line))
  end

  test "should show chat_line" do
    get :show, :id => @chat_line.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @chat_line.to_param
    assert_response :success
  end

  test "should update chat_line" do
    put :update, :id => @chat_line.to_param, :chat_line => @chat_line.attributes
    assert_redirected_to chat_line_path(assigns(:chat_line))
  end

  test "should destroy chat_line" do
    assert_difference('ChatLine.count', -1) do
      delete :destroy, :id => @chat_line.to_param
    end

    assert_redirected_to chat_lines_path
  end
end
