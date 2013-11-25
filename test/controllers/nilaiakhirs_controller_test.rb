require 'test_helper'

class NilaiakhirsControllerTest < ActionController::TestCase
  setup do
    @nilaiakhir = nilaiakhirs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nilaiakhirs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nilaiakhir" do
    assert_difference('Nilaiakhir.count') do
      post :create, nilaiakhir: { berkelas_id: @nilaiakhir.berkelas_id, mapel_id: @nilaiakhir.mapel_id, nilai: @nilaiakhir.nilai }
    end

    assert_redirected_to nilaiakhir_path(assigns(:nilaiakhir))
  end

  test "should show nilaiakhir" do
    get :show, id: @nilaiakhir
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nilaiakhir
    assert_response :success
  end

  test "should update nilaiakhir" do
    patch :update, id: @nilaiakhir, nilaiakhir: { berkelas_id: @nilaiakhir.berkelas_id, mapel_id: @nilaiakhir.mapel_id, nilai: @nilaiakhir.nilai }
    assert_redirected_to nilaiakhir_path(assigns(:nilaiakhir))
  end

  test "should destroy nilaiakhir" do
    assert_difference('Nilaiakhir.count', -1) do
      delete :destroy, id: @nilaiakhir
    end

    assert_redirected_to nilaiakhirs_path
  end
end
