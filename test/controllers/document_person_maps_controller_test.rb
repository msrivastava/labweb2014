require 'test_helper'

class DocumentPersonMapsControllerTest < ActionController::TestCase
  setup do
    @document_person_map = document_person_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:document_person_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document_person_map" do
    assert_difference('DocumentPersonMap.count') do
      post :create, document_person_map: { document_id: @document_person_map.document_id, listposition: @document_person_map.listposition, person_id: @document_person_map.person_id }
    end

    assert_redirected_to document_person_map_path(assigns(:document_person_map))
  end

  test "should show document_person_map" do
    get :show, id: @document_person_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @document_person_map
    assert_response :success
  end

  test "should update document_person_map" do
    patch :update, id: @document_person_map, document_person_map: { document_id: @document_person_map.document_id, listposition: @document_person_map.listposition, person_id: @document_person_map.person_id }
    assert_redirected_to document_person_map_path(assigns(:document_person_map))
  end

  test "should destroy document_person_map" do
    assert_difference('DocumentPersonMap.count', -1) do
      delete :destroy, id: @document_person_map
    end

    assert_redirected_to document_person_maps_path
  end
end
