require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post :create, document: { abstract: @document.abstract, document_category_id: @document.document_category_id, file: @document.file, filename: @document.filename, islabdocument: @document.islabdocument, ispublic: @document.ispublic, miscattributes: @document.miscattributes, pubdate: @document.pubdate, pubdate_end: @document.pubdate_end, pubin: @document.pubin, publisher: @document.publisher, pubnum: @document.pubnum, pubnum_end: @document.pubnum_end, pubpagecount: @document.pubpagecount, pubpagefirst: @document.pubpagefirst, pubpagelast: @document.pubpagelast, pubplace: @document.pubplace, pubvol: @document.pubvol, research_area_id: @document.research_area_id, title: @document.title, trmonth: @document.trmonth, trnumber: @document.trnumber, tryear: @document.tryear, urlavmedia: @document.urlavmedia, urlciteseer: @document.urlciteseer, urldoi: @document.urldoi, urlgooglescholar: @document.urlgooglescholar, urlpdfpaper: @document.urlpdfpaper, urlpdfpresentation: @document.urlpdfpresentation, urlpublisher: @document.urlpublisher, urlsrcpaper: @document.urlsrcpaper, urlsrcpresentation: @document.urlsrcpresentation }
    end

    assert_redirected_to document_path(assigns(:document))
  end

  test "should show document" do
    get :show, id: @document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @document
    assert_response :success
  end

  test "should update document" do
    patch :update, id: @document, document: { abstract: @document.abstract, document_category_id: @document.document_category_id, file: @document.file, filename: @document.filename, islabdocument: @document.islabdocument, ispublic: @document.ispublic, miscattributes: @document.miscattributes, pubdate: @document.pubdate, pubdate_end: @document.pubdate_end, pubin: @document.pubin, publisher: @document.publisher, pubnum: @document.pubnum, pubnum_end: @document.pubnum_end, pubpagecount: @document.pubpagecount, pubpagefirst: @document.pubpagefirst, pubpagelast: @document.pubpagelast, pubplace: @document.pubplace, pubvol: @document.pubvol, research_area_id: @document.research_area_id, title: @document.title, trmonth: @document.trmonth, trnumber: @document.trnumber, tryear: @document.tryear, urlavmedia: @document.urlavmedia, urlciteseer: @document.urlciteseer, urldoi: @document.urldoi, urlgooglescholar: @document.urlgooglescholar, urlpdfpaper: @document.urlpdfpaper, urlpdfpresentation: @document.urlpdfpresentation, urlpublisher: @document.urlpublisher, urlsrcpaper: @document.urlsrcpaper, urlsrcpresentation: @document.urlsrcpresentation }
    assert_redirected_to document_path(assigns(:document))
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete :destroy, id: @document
    end

    assert_redirected_to documents_path
  end
end
