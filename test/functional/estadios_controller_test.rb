require 'test_helper'

class EstadiosControllerTest < ActionController::TestCase
  setup do
    @estadio = estadios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadio" do
    assert_difference('Estadio.count') do
      post :create, estadio: { cidade: @estadio.cidade, estado: @estadio.estado, nome: @estadio.nome }
    end

    assert_redirected_to estadio_path(assigns(:estadio))
  end

  test "should show estadio" do
    get :show, id: @estadio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadio
    assert_response :success
  end

  test "should update estadio" do
    put :update, id: @estadio, estadio: { cidade: @estadio.cidade, estado: @estadio.estado, nome: @estadio.nome }
    assert_redirected_to estadio_path(assigns(:estadio))
  end

  test "should destroy estadio" do
    assert_difference('Estadio.count', -1) do
      delete :destroy, id: @estadio
    end

    assert_redirected_to estadios_path
  end
end
