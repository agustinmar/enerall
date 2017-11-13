require 'test_helper'

class ContenidosControllerTest < ActionController::TestCase
  setup do
    @contenido = contenidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contenidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contenido" do
    assert_difference('Contenido.count') do
      post :create, contenido: { parent_id: @contenido.parent_id, texto: @contenido.texto, titulo: @contenido.titulo }
    end

    assert_redirected_to contenido_path(assigns(:contenido))
  end

  test "should show contenido" do
    get :show, id: @contenido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contenido
    assert_response :success
  end

  test "should update contenido" do
    patch :update, id: @contenido, contenido: { parent_id: @contenido.parent_id, texto: @contenido.texto, titulo: @contenido.titulo }
    assert_redirected_to contenido_path(assigns(:contenido))
  end

  test "should destroy contenido" do
    assert_difference('Contenido.count', -1) do
      delete :destroy, id: @contenido
    end

    assert_redirected_to contenidos_path
  end
end
