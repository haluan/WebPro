require 'test_helper'

class ProfilsekolahsControllerTest < ActionController::TestCase
  setup do
    @profilsekolah = profilsekolahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profilsekolahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profilsekolah" do
    assert_difference('Profilsekolah.count') do
      post :create, profilsekolah: { deskripsi: @profilsekolah.deskripsi, title: @profilsekolah.title }
    end

    assert_redirected_to profilsekolah_path(assigns(:profilsekolah))
  end

  test "should show profilsekolah" do
    get :show, id: @profilsekolah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profilsekolah
    assert_response :success
  end

  test "should update profilsekolah" do
    patch :update, id: @profilsekolah, profilsekolah: { deskripsi: @profilsekolah.deskripsi, title: @profilsekolah.title }
    assert_redirected_to profilsekolah_path(assigns(:profilsekolah))
  end

  test "should destroy profilsekolah" do
    assert_difference('Profilsekolah.count', -1) do
      delete :destroy, id: @profilsekolah
    end

    assert_redirected_to profilsekolahs_path
  end
end
