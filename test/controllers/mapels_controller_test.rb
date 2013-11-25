require 'test_helper'

class MapelsControllerTest < ActionController::TestCase
  setup do
    @mapel = mapels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mapels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mapel" do
    assert_difference('Mapel.count') do
      post :create, mapel: { kode: @mapel.kode, nama: @mapel.nama }
    end

    assert_redirected_to mapel_path(assigns(:mapel))
  end

  test "should show mapel" do
    get :show, id: @mapel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mapel
    assert_response :success
  end

  test "should update mapel" do
    patch :update, id: @mapel, mapel: { kode: @mapel.kode, nama: @mapel.nama }
    assert_redirected_to mapel_path(assigns(:mapel))
  end

  test "should destroy mapel" do
    assert_difference('Mapel.count', -1) do
      delete :destroy, id: @mapel
    end

    assert_redirected_to mapels_path
  end
end
