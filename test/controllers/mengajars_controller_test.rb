require 'test_helper'

class MengajarsControllerTest < ActionController::TestCase
  setup do
    @mengajar = mengajars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mengajars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mengajar" do
    assert_difference('Mengajar.count') do
      post :create, mengajar: { guru_id: @mengajar.guru_id, mapel_id: @mengajar.mapel_id, tahun_ajaran: @mengajar.tahun_ajaran }
    end

    assert_redirected_to mengajar_path(assigns(:mengajar))
  end

  test "should show mengajar" do
    get :show, id: @mengajar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mengajar
    assert_response :success
  end

  test "should update mengajar" do
    patch :update, id: @mengajar, mengajar: { guru_id: @mengajar.guru_id, mapel_id: @mengajar.mapel_id, tahun_ajaran: @mengajar.tahun_ajaran }
    assert_redirected_to mengajar_path(assigns(:mengajar))
  end

  test "should destroy mengajar" do
    assert_difference('Mengajar.count', -1) do
      delete :destroy, id: @mengajar
    end

    assert_redirected_to mengajars_path
  end
end
