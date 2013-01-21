require 'test_helper'

class AhasControllerTest < ActionController::TestCase
  setup do
    @aha = ahas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ahas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aha" do
    assert_difference('Aha.count') do
      post :create, aha: { note: @aha.note }
    end

    assert_redirected_to aha_path(assigns(:aha))
  end

  test "should show aha" do
    get :show, id: @aha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aha
    assert_response :success
  end

  test "should update aha" do
    put :update, id: @aha, aha: { note: @aha.note }
    assert_redirected_to aha_path(assigns(:aha))
  end

  test "should destroy aha" do
    assert_difference('Aha.count', -1) do
      delete :destroy, id: @aha
    end

    assert_redirected_to ahas_path
  end
end
