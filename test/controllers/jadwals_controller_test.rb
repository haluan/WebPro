require 'test_helper'

class JadwalsControllerTest < ActionController::TestCase
  setup do
    @jadwal = jadwals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jadwals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jadwal" do
    assert_difference('Jadwal.count') do
      post :create, jadwal: { hari: @jadwal.hari, jam: @jadwal.jam, kelas_id: @jadwal.kelas_id, mengajar_id: @jadwal.mengajar_id, tanggal: @jadwal.tanggal }
    end

    assert_redirected_to jadwal_path(assigns(:jadwal))
  end

  test "should show jadwal" do
    get :show, id: @jadwal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jadwal
    assert_response :success
  end

  test "should update jadwal" do
    patch :update, id: @jadwal, jadwal: { hari: @jadwal.hari, jam: @jadwal.jam, kelas_id: @jadwal.kelas_id, mengajar_id: @jadwal.mengajar_id, tanggal: @jadwal.tanggal }
    assert_redirected_to jadwal_path(assigns(:jadwal))
  end

  test "should destroy jadwal" do
    assert_difference('Jadwal.count', -1) do
      delete :destroy, id: @jadwal
    end

    assert_redirected_to jadwals_path
  end
end
