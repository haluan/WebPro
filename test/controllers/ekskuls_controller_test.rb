require 'test_helper'

class EkskulsControllerTest < ActionController::TestCase
  setup do
    @ekskul = ekskuls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ekskuls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ekskul" do
    assert_difference('Ekskul.count') do
      post :create, ekskul: { deskripsi: @ekskul.deskripsi, guru_id: @ekskul.guru_id, nama: @ekskul.nama }
    end

    assert_redirected_to ekskul_path(assigns(:ekskul))
  end

  test "should show ekskul" do
    get :show, id: @ekskul
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ekskul
    assert_response :success
  end

  test "should update ekskul" do
    patch :update, id: @ekskul, ekskul: { deskripsi: @ekskul.deskripsi, guru_id: @ekskul.guru_id, nama: @ekskul.nama }
    assert_redirected_to ekskul_path(assigns(:ekskul))
  end

  test "should destroy ekskul" do
    assert_difference('Ekskul.count', -1) do
      delete :destroy, id: @ekskul
    end

    assert_redirected_to ekskuls_path
  end
end
