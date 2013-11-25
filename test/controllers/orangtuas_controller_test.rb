require 'test_helper'

class OrangtuasControllerTest < ActionController::TestCase
  setup do
    @orangtua = orangtuas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orangtuas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orangtua" do
    assert_difference('Orangtua.count') do
      post :create, orangtua: { NIK: @orangtua.NIK, agama: @orangtua.agama, alamat: @orangtua.alamat, birthday: @orangtua.birthday, birthplace: @orangtua.birthplace, email: @orangtua.email, ingat_aku: @orangtua.ingat_aku, nama: @orangtua.nama, password_digest: @orangtua.password_digest, pekerjaan: @orangtua.pekerjaan }
    end

    assert_redirected_to orangtua_path(assigns(:orangtua))
  end

  test "should show orangtua" do
    get :show, id: @orangtua
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orangtua
    assert_response :success
  end

  test "should update orangtua" do
    patch :update, id: @orangtua, orangtua: { NIK: @orangtua.NIK, agama: @orangtua.agama, alamat: @orangtua.alamat, birthday: @orangtua.birthday, birthplace: @orangtua.birthplace, email: @orangtua.email, ingat_aku: @orangtua.ingat_aku, nama: @orangtua.nama, password_digest: @orangtua.password_digest, pekerjaan: @orangtua.pekerjaan }
    assert_redirected_to orangtua_path(assigns(:orangtua))
  end

  test "should destroy orangtua" do
    assert_difference('Orangtua.count', -1) do
      delete :destroy, id: @orangtua
    end

    assert_redirected_to orangtuas_path
  end
end
