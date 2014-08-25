require 'test_helper'

class PersonCategoriesControllerTest < ActionController::TestCase
  setup do
    @person_category = person_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_category" do
    assert_difference('PersonCategory.count') do
      post :create, person_category: { name: @person_category.name }
    end

    assert_redirected_to person_category_path(assigns(:person_category))
  end

  test "should show person_category" do
    get :show, id: @person_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_category
    assert_response :success
  end

  test "should update person_category" do
    patch :update, id: @person_category, person_category: { name: @person_category.name }
    assert_redirected_to person_category_path(assigns(:person_category))
  end

  test "should destroy person_category" do
    assert_difference('PersonCategory.count', -1) do
      delete :destroy, id: @person_category
    end

    assert_redirected_to person_categories_path
  end
end
