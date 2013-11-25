require 'test_helper'

class BerekskulsControllerTest < ActionController::TestCase
  setup do
    @berekskul = berekskuls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:berekskuls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create berekskul" do
    assert_difference('Berekskul.count') do
      post :create, berekskul: { ekskul_id: @berekskul.ekskul_id, mahasiswa_id: @berekskul.mahasiswa_id, tahun: @berekskul.tahun }
    end

    assert_redirected_to berekskul_path(assigns(:berekskul))
  end

  test "should show berekskul" do
    get :show, id: @berekskul
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @berekskul
    assert_response :success
  end

  test "should update berekskul" do
    patch :update, id: @berekskul, berekskul: { ekskul_id: @berekskul.ekskul_id, mahasiswa_id: @berekskul.mahasiswa_id, tahun: @berekskul.tahun }
    assert_redirected_to berekskul_path(assigns(:berekskul))
  end

  test "should destroy berekskul" do
    assert_difference('Berekskul.count', -1) do
      delete :destroy, id: @berekskul
    end

    assert_redirected_to berekskuls_path
  end
end
