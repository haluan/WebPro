require 'test_helper'

class KelasControllerTest < ActionController::TestCase
  setup do
    @kela = kelas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kelas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kela" do
    assert_difference('Kela.count') do
      post :create, kela: { nama: @kela.nama, walikelas_id: @kela.walikelas_id }
    end

    assert_redirected_to kela_path(assigns(:kela))
  end

  test "should show kela" do
    get :show, id: @kela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kela
    assert_response :success
  end

  test "should update kela" do
    patch :update, id: @kela, kela: { nama: @kela.nama, walikelas_id: @kela.walikelas_id }
    assert_redirected_to kela_path(assigns(:kela))
  end

  test "should destroy kela" do
    assert_difference('Kela.count', -1) do
      delete :destroy, id: @kela
    end

    assert_redirected_to kelas_path
  end
end
