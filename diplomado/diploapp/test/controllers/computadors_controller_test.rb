require 'test_helper'

class ComputadorsControllerTest < ActionController::TestCase
  setup do
    @computador = computadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computador" do
    assert_difference('Computador.count') do
      post :create, computador: { cant_disco: @computador.cant_disco, cant_mem: @computador.cant_mem, feac_fab: @computador.feac_fab, procesador: @computador.procesador, sisope: @computador.sisope, tarj_video: @computador.tarj_video, uni_disco: @computador.uni_disco }
    end

    assert_redirected_to computador_path(assigns(:computador))
  end

  test "should show computador" do
    get :show, id: @computador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @computador
    assert_response :success
  end

  test "should update computador" do
    patch :update, id: @computador, computador: { cant_disco: @computador.cant_disco, cant_mem: @computador.cant_mem, feac_fab: @computador.feac_fab, procesador: @computador.procesador, sisope: @computador.sisope, tarj_video: @computador.tarj_video, uni_disco: @computador.uni_disco }
    assert_redirected_to computador_path(assigns(:computador))
  end

  test "should destroy computador" do
    assert_difference('Computador.count', -1) do
      delete :destroy, id: @computador
    end

    assert_redirected_to computadors_path
  end
end
