require 'test_helper'

class GurusControllerTest < ActionController::TestCase
  setup do
    @guru = gurus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gurus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guru" do
    assert_difference('Guru.count') do
      post :create, guru: { agama: @guru.agama, alamat: @guru.alamat, birthday: @guru.birthday, birthplace: @guru.birthplace, email: @guru.email, ingat_aku: @guru.ingat_aku, nama: @guru.nama, nip: @guru.nip, password_digest: @guru.password_digest }
    end

    assert_redirected_to guru_path(assigns(:guru))
  end

  test "should show guru" do
    get :show, id: @guru
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guru
    assert_response :success
  end

  test "should update guru" do
    patch :update, id: @guru, guru: { agama: @guru.agama, alamat: @guru.alamat, birthday: @guru.birthday, birthplace: @guru.birthplace, email: @guru.email, ingat_aku: @guru.ingat_aku, nama: @guru.nama, nip: @guru.nip, password_digest: @guru.password_digest }
    assert_redirected_to guru_path(assigns(:guru))
  end

  test "should destroy guru" do
    assert_difference('Guru.count', -1) do
      delete :destroy, id: @guru
    end

    assert_redirected_to gurus_path
  end
end
