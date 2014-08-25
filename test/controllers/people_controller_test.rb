require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { addresslab: @person.addresslab, addressmail: @person.addressmail, addressoffice: @person.addressoffice, awards: @person.awards, biography: @person.biography, bs_field: @person.bs_field, bs_in_lab: @person.bs_in_lab, bs_school: @person.bs_school, bs_title: @person.bs_title, bs_year: @person.bs_year, department: @person.department, education: @person.education, email: @person.email, fax: @person.fax, firstname: @person.firstname, interests: @person.interests, lastname: @person.lastname, middleinitial: @person.middleinitial, miscattributes: @person.miscattributes, ms_field: @person.ms_field, ms_in_lab: @person.ms_in_lab, ms_school: @person.ms_school, ms_thesis: @person.ms_thesis, ms_title: @person.ms_title, ms_year: @person.ms_year, organization: @person.organization, otherpublications: @person.otherpublications, patents: @person.patents, person_category_id: @person.person_category_id, phd_field: @person.phd_field, phd_in_lab: @person.phd_in_lab, phd_school: @person.phd_school, phd_thesis: @person.phd_thesis, phd_title: @person.phd_title, phd_year: @person.phd_year, phonecell: @person.phonecell, phonehome: @person.phonehome, phonework: @person.phonework, professionalexperience: @person.professionalexperience, professionalservice: @person.professionalservice, researchinterests: @person.researchinterests, secretary: @person.secretary, skills: @person.skills, url: @person.url, urldepartment: @person.urldepartment, urlorganization: @person.urlorganization, urlphoto: @person.urlphoto, webname: @person.webname }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { addresslab: @person.addresslab, addressmail: @person.addressmail, addressoffice: @person.addressoffice, awards: @person.awards, biography: @person.biography, bs_field: @person.bs_field, bs_in_lab: @person.bs_in_lab, bs_school: @person.bs_school, bs_title: @person.bs_title, bs_year: @person.bs_year, department: @person.department, education: @person.education, email: @person.email, fax: @person.fax, firstname: @person.firstname, interests: @person.interests, lastname: @person.lastname, middleinitial: @person.middleinitial, miscattributes: @person.miscattributes, ms_field: @person.ms_field, ms_in_lab: @person.ms_in_lab, ms_school: @person.ms_school, ms_thesis: @person.ms_thesis, ms_title: @person.ms_title, ms_year: @person.ms_year, organization: @person.organization, otherpublications: @person.otherpublications, patents: @person.patents, person_category_id: @person.person_category_id, phd_field: @person.phd_field, phd_in_lab: @person.phd_in_lab, phd_school: @person.phd_school, phd_thesis: @person.phd_thesis, phd_title: @person.phd_title, phd_year: @person.phd_year, phonecell: @person.phonecell, phonehome: @person.phonehome, phonework: @person.phonework, professionalexperience: @person.professionalexperience, professionalservice: @person.professionalservice, researchinterests: @person.researchinterests, secretary: @person.secretary, skills: @person.skills, url: @person.url, urldepartment: @person.urldepartment, urlorganization: @person.urlorganization, urlphoto: @person.urlphoto, webname: @person.webname }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
