require 'test_helper'

class MicoropostsControllerTest < ActionController::TestCase
  setup do
    @micoropost = micoroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micoroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micoropost" do
    assert_difference('Micoropost.count') do
      post :create, micoropost: { content: @micoropost.content, user_id: @micoropost.user_id }
    end

    assert_redirected_to micoropost_path(assigns(:micoropost))
  end

  test "should show micoropost" do
    get :show, id: @micoropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micoropost
    assert_response :success
  end

  test "should update micoropost" do
    put :update, id: @micoropost, micoropost: { content: @micoropost.content, user_id: @micoropost.user_id }
    assert_redirected_to micoropost_path(assigns(:micoropost))
  end

  test "should destroy micoropost" do
    assert_difference('Micoropost.count', -1) do
      delete :destroy, id: @micoropost
    end

    assert_redirected_to micoroposts_path
  end
end
