require 'test_helper'

class SlideItemsControllerTest < ActionController::TestCase
  setup do
    @slide_item = slide_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slide_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slide_item" do
    assert_difference('SlideItem.count') do
      post :create, slide_item: { content: @slide_item.content, slideimg: @slide_item.slideimg, title: @slide_item.title }
    end

    assert_redirected_to slide_item_path(assigns(:slide_item))
  end

  test "should show slide_item" do
    get :show, id: @slide_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slide_item
    assert_response :success
  end

  test "should update slide_item" do
    put :update, id: @slide_item, slide_item: { content: @slide_item.content, slideimg: @slide_item.slideimg, title: @slide_item.title }
    assert_redirected_to slide_item_path(assigns(:slide_item))
  end

  test "should destroy slide_item" do
    assert_difference('SlideItem.count', -1) do
      delete :destroy, id: @slide_item
    end

    assert_redirected_to slide_items_path
  end
end
