require 'test_helper'

class MahasiswasControllerTest < ActionController::TestCase
  setup do
    @mahasiswa = mahasiswas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mahasiswas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mahasiswa" do
    assert_difference('Mahasiswa.count') do
      post :create, mahasiswa: { agama: @mahasiswa.agama, alamat: @mahasiswa.alamat, birthday: @mahasiswa.birthday, birthplace: @mahasiswa.birthplace, email: @mahasiswa.email, ingat_aku: @mahasiswa.ingat_aku, nama: @mahasiswa.nama, nim: @mahasiswa.nim, orangtua_id: @mahasiswa.orangtua_id, password_digest: @mahasiswa.password_digest }
    end

    assert_redirected_to mahasiswa_path(assigns(:mahasiswa))
  end

  test "should show mahasiswa" do
    get :show, id: @mahasiswa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mahasiswa
    assert_response :success
  end

  test "should update mahasiswa" do
    patch :update, id: @mahasiswa, mahasiswa: { agama: @mahasiswa.agama, alamat: @mahasiswa.alamat, birthday: @mahasiswa.birthday, birthplace: @mahasiswa.birthplace, email: @mahasiswa.email, ingat_aku: @mahasiswa.ingat_aku, nama: @mahasiswa.nama, nim: @mahasiswa.nim, orangtua_id: @mahasiswa.orangtua_id, password_digest: @mahasiswa.password_digest }
    assert_redirected_to mahasiswa_path(assigns(:mahasiswa))
  end

  test "should destroy mahasiswa" do
    assert_difference('Mahasiswa.count', -1) do
      delete :destroy, id: @mahasiswa
    end

    assert_redirected_to mahasiswas_path
  end
end
