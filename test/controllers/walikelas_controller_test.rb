require 'test_helper'

class WalikelasControllerTest < ActionController::TestCase
  setup do
    @walikela = walikelas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:walikelas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create walikela" do
    assert_difference('Walikela.count') do
      post :create, walikela: { guru_id: @walikela.guru_id, kelas_id: @walikela.kelas_id, tahun_ajaran: @walikela.tahun_ajaran }
    end

    assert_redirected_to walikela_path(assigns(:walikela))
  end

  test "should show walikela" do
    get :show, id: @walikela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @walikela
    assert_response :success
  end

  test "should update walikela" do
    patch :update, id: @walikela, walikela: { guru_id: @walikela.guru_id, kelas_id: @walikela.kelas_id, tahun_ajaran: @walikela.tahun_ajaran }
    assert_redirected_to walikela_path(assigns(:walikela))
  end

  test "should destroy walikela" do
    assert_difference('Walikela.count', -1) do
      delete :destroy, id: @walikela
    end

    assert_redirected_to walikelas_path
  end
end
