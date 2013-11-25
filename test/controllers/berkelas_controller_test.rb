require 'test_helper'

class BerkelasControllerTest < ActionController::TestCase
  setup do
    @berkela = berkelas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:berkelas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create berkela" do
    assert_difference('Berkela.count') do
      post :create, berkela: { kelas_id: @berkela.kelas_id, mahasiswa_id: @berkela.mahasiswa_id, tahun_ajaran: @berkela.tahun_ajaran }
    end

    assert_redirected_to berkela_path(assigns(:berkela))
  end

  test "should show berkela" do
    get :show, id: @berkela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @berkela
    assert_response :success
  end

  test "should update berkela" do
    patch :update, id: @berkela, berkela: { kelas_id: @berkela.kelas_id, mahasiswa_id: @berkela.mahasiswa_id, tahun_ajaran: @berkela.tahun_ajaran }
    assert_redirected_to berkela_path(assigns(:berkela))
  end

  test "should destroy berkela" do
    assert_difference('Berkela.count', -1) do
      delete :destroy, id: @berkela
    end

    assert_redirected_to berkelas_path
  end
end
