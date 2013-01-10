require 'test_helper'

class LeftItemsControllerTest < ActionController::TestCase
  setup do
    @left_item = left_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:left_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create left_item" do
    assert_difference('LeftItem.count') do
      post :create, left_item: { content: @left_item.content, title: @left_item.title }
    end

    assert_redirected_to left_item_path(assigns(:left_item))
  end

  test "should show left_item" do
    get :show, id: @left_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @left_item
    assert_response :success
  end

  test "should update left_item" do
    put :update, id: @left_item, left_item: { content: @left_item.content, title: @left_item.title }
    assert_redirected_to left_item_path(assigns(:left_item))
  end

  test "should destroy left_item" do
    assert_difference('LeftItem.count', -1) do
      delete :destroy, id: @left_item
    end

    assert_redirected_to left_items_path
  end
end
