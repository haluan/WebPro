require 'test_helper'

class AdminsControllerTest < ActionController::TestCase
  setup do
    @admin = admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin" do
    assert_difference('Admin.count') do
      post :create, admin: { agama: @admin.agama, alamat: @admin.alamat, birthday: @admin.birthday, birthplace: @admin.birthplace, email: @admin.email, ingat_aku: @admin.ingat_aku, nama: @admin.nama, nip: @admin.nip, password_digest: @admin.password_digest }
    end

    assert_redirected_to admin_path(assigns(:admin))
  end

  test "should show admin" do
    get :show, id: @admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin
    assert_response :success
  end

  test "should update admin" do
    patch :update, id: @admin, admin: { agama: @admin.agama, alamat: @admin.alamat, birthday: @admin.birthday, birthplace: @admin.birthplace, email: @admin.email, ingat_aku: @admin.ingat_aku, nama: @admin.nama, nip: @admin.nip, password_digest: @admin.password_digest }
    assert_redirected_to admin_path(assigns(:admin))
  end

  test "should destroy admin" do
    assert_difference('Admin.count', -1) do
      delete :destroy, id: @admin
    end

    assert_redirected_to admins_path
  end
end
