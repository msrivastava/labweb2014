require 'test_helper'

class ProductPersonMapsControllerTest < ActionController::TestCase
  setup do
    @product_person_map = product_person_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_person_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_person_map" do
    assert_difference('ProductPersonMap.count') do
      post :create, product_person_map: { listposition: @product_person_map.listposition, person_id: @product_person_map.person_id, product_id: @product_person_map.product_id }
    end

    assert_redirected_to product_person_map_path(assigns(:product_person_map))
  end

  test "should show product_person_map" do
    get :show, id: @product_person_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_person_map
    assert_response :success
  end

  test "should update product_person_map" do
    patch :update, id: @product_person_map, product_person_map: { listposition: @product_person_map.listposition, person_id: @product_person_map.person_id, product_id: @product_person_map.product_id }
    assert_redirected_to product_person_map_path(assigns(:product_person_map))
  end

  test "should destroy product_person_map" do
    assert_difference('ProductPersonMap.count', -1) do
      delete :destroy, id: @product_person_map
    end

    assert_redirected_to product_person_maps_path
  end
end
