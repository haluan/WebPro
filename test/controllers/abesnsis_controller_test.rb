require 'test_helper'

class AbesnsisControllerTest < ActionController::TestCase
  setup do
    @abesnsi = abesnsis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abesnsis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abesnsi" do
    assert_difference('Abesnsi.count') do
      post :create, abesnsi: { jadwal_id: @abesnsi.jadwal_id, mahasiswa_id: @abesnsi.mahasiswa_id, status: @abesnsi.status }
    end

    assert_redirected_to abesnsi_path(assigns(:abesnsi))
  end

  test "should show abesnsi" do
    get :show, id: @abesnsi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abesnsi
    assert_response :success
  end

  test "should update abesnsi" do
    patch :update, id: @abesnsi, abesnsi: { jadwal_id: @abesnsi.jadwal_id, mahasiswa_id: @abesnsi.mahasiswa_id, status: @abesnsi.status }
    assert_redirected_to abesnsi_path(assigns(:abesnsi))
  end

  test "should destroy abesnsi" do
    assert_difference('Abesnsi.count', -1) do
      delete :destroy, id: @abesnsi
    end

    assert_redirected_to abesnsis_path
  end
end
