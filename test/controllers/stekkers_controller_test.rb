require 'test_helper'

class StekkersControllerTest < ActionController::TestCase
  setup do
    @stekker = stekkers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stekkers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stekker" do
    assert_difference('Stekker.count') do
      post :create, stekker: { deadline: @stekker.deadline, memo: @stekker.memo }
    end

    assert_redirected_to stekker_path(assigns(:stekker))
  end

  test "should show stekker" do
    get :show, id: @stekker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stekker
    assert_response :success
  end

  test "should update stekker" do
    patch :update, id: @stekker, stekker: { deadline: @stekker.deadline, memo: @stekker.memo }
    assert_redirected_to stekker_path(assigns(:stekker))
  end

  test "should destroy stekker" do
    assert_difference('Stekker.count', -1) do
      delete :destroy, id: @stekker
    end

    assert_redirected_to stekkers_path
  end
end
