require 'test_helper'

class GrantsControllerTest < ActionController::TestCase
  setup do
    @grant = grants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grant" do
    assert_difference('Grant.count') do
      post :create, grant: { awardnumber: @grant.awardnumber, description: @grant.description, enddate: @grant.enddate, fundingagencygranturl: @grant.fundingagencygranturl, fundingagencylogourl: @grant.fundingagencylogourl, fundingagencyname: @grant.fundingagencyname, fundingagencyurl: @grant.fundingagencyurl, miscattributes: @grant.miscattributes, name: @grant.name, programname: @grant.programname, programurl: @grant.programurl, research_area_id: @grant.research_area_id, startdate: @grant.startdate, totalawardamount: @grant.totalawardamount, url: @grant.url }
    end

    assert_redirected_to grant_path(assigns(:grant))
  end

  test "should show grant" do
    get :show, id: @grant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grant
    assert_response :success
  end

  test "should update grant" do
    patch :update, id: @grant, grant: { awardnumber: @grant.awardnumber, description: @grant.description, enddate: @grant.enddate, fundingagencygranturl: @grant.fundingagencygranturl, fundingagencylogourl: @grant.fundingagencylogourl, fundingagencyname: @grant.fundingagencyname, fundingagencyurl: @grant.fundingagencyurl, miscattributes: @grant.miscattributes, name: @grant.name, programname: @grant.programname, programurl: @grant.programurl, research_area_id: @grant.research_area_id, startdate: @grant.startdate, totalawardamount: @grant.totalawardamount, url: @grant.url }
    assert_redirected_to grant_path(assigns(:grant))
  end

  test "should destroy grant" do
    assert_difference('Grant.count', -1) do
      delete :destroy, id: @grant
    end

    assert_redirected_to grants_path
  end
end
