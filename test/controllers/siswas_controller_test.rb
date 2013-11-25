require 'test_helper'

class SiswasControllerTest < ActionController::TestCase
  setup do
    @siswa = siswas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siswas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siswa" do
    assert_difference('Siswa.count') do
      post :create, siswa: { agama: @siswa.agama, alamat: @siswa.alamat, birthday: @siswa.birthday, birthplace: @siswa.birthplace, email: @siswa.email, ingat_aku: @siswa.ingat_aku, nama: @siswa.nama, nis: @siswa.nis, orangtua_id: @siswa.orangtua_id, password_digest: @siswa.password_digest }
    end

    assert_redirected_to siswa_path(assigns(:siswa))
  end

  test "should show siswa" do
    get :show, id: @siswa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siswa
    assert_response :success
  end

  test "should update siswa" do
    patch :update, id: @siswa, siswa: { agama: @siswa.agama, alamat: @siswa.alamat, birthday: @siswa.birthday, birthplace: @siswa.birthplace, email: @siswa.email, ingat_aku: @siswa.ingat_aku, nama: @siswa.nama, nis: @siswa.nis, orangtua_id: @siswa.orangtua_id, password_digest: @siswa.password_digest }
    assert_redirected_to siswa_path(assigns(:siswa))
  end

  test "should destroy siswa" do
    assert_difference('Siswa.count', -1) do
      delete :destroy, id: @siswa
    end

    assert_redirected_to siswas_path
  end
end
