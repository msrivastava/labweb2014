require 'test_helper'

class WebPagesControllerTest < ActionController::TestCase
  setup do
    @web_page = web_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_page" do
    assert_difference('WebPage.count') do
      post :create, web_page: { bartitle: @web_page.bartitle, body: @web_page.body, ispublic: @web_page.ispublic, pagetitle: @web_page.pagetitle, url: @web_page.url }
    end

    assert_redirected_to web_page_path(assigns(:web_page))
  end

  test "should show web_page" do
    get :show, id: @web_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_page
    assert_response :success
  end

  test "should update web_page" do
    patch :update, id: @web_page, web_page: { bartitle: @web_page.bartitle, body: @web_page.body, ispublic: @web_page.ispublic, pagetitle: @web_page.pagetitle, url: @web_page.url }
    assert_redirected_to web_page_path(assigns(:web_page))
  end

  test "should destroy web_page" do
    assert_difference('WebPage.count', -1) do
      delete :destroy, id: @web_page
    end

    assert_redirected_to web_pages_path
  end
end
