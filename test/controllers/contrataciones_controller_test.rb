require 'test_helper'

class ContratacionesControllerTest < ActionController::TestCase
  setup do
    @contratacione = contrataciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contrataciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contratacione" do
    assert_difference('Contratacione.count') do
      post :create, contratacione: { evento: @contratacione.evento, fecha: @contratacione.fecha, lugar: @contratacione.lugar }
    end

    assert_redirected_to contratacione_path(assigns(:contratacione))
  end

  test "should show contratacione" do
    get :show, id: @contratacione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contratacione
    assert_response :success
  end

  test "should update contratacione" do
    patch :update, id: @contratacione, contratacione: { evento: @contratacione.evento, fecha: @contratacione.fecha, lugar: @contratacione.lugar }
    assert_redirected_to contratacione_path(assigns(:contratacione))
  end

  test "should destroy contratacione" do
    assert_difference('Contratacione.count', -1) do
      delete :destroy, id: @contratacione
    end

    assert_redirected_to contrataciones_path
  end
end
