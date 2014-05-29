require 'test_helper'

class IntegrantesControllerTest < ActionController::TestCase
  setup do
    @integrante = integrantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:integrantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create integrante" do
    assert_difference('Integrante.count') do
      post :create, integrante: { email: @integrante.email, instrumento: @integrante.instrumento, nombre: @integrante.nombre }
    end

    assert_redirected_to integrante_path(assigns(:integrante))
  end

  test "should show integrante" do
    get :show, id: @integrante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @integrante
    assert_response :success
  end

  test "should update integrante" do
    patch :update, id: @integrante, integrante: { email: @integrante.email, instrumento: @integrante.instrumento, nombre: @integrante.nombre }
    assert_redirected_to integrante_path(assigns(:integrante))
  end

  test "should destroy integrante" do
    assert_difference('Integrante.count', -1) do
      delete :destroy, id: @integrante
    end

    assert_redirected_to integrantes_path
  end
end
