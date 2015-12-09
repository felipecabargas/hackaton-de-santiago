require 'test_helper'

class FundationsControllerTest < ActionController::TestCase
  setup do
    @fundation = fundations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fundations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fundation" do
    assert_difference('Fundation.count') do
      post :create, fundation: { age: @fundation.age, country: @fundation.country, name: @fundation.name, website: @fundation.website }
    end

    assert_redirected_to fundation_path(assigns(:fundation))
  end

  test "should show fundation" do
    get :show, id: @fundation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fundation
    assert_response :success
  end

  test "should update fundation" do
    patch :update, id: @fundation, fundation: { age: @fundation.age, country: @fundation.country, name: @fundation.name, website: @fundation.website }
    assert_redirected_to fundation_path(assigns(:fundation))
  end

  test "should destroy fundation" do
    assert_difference('Fundation.count', -1) do
      delete :destroy, id: @fundation
    end

    assert_redirected_to fundations_path
  end
end
