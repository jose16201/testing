require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('client.count') do
      post :create, client: { Apellido: @client.Apellido, Contraseña: @client.Contraseña, Correo: @client.Correo, DNI: @client.DNI, Direccion: @client.Direccion, Nombre: @client.Nombre, Telefono: @client.Telefono, Usuario: @client.Usuario }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { Apellido: @client.Apellido, Contraseña: @client.Contraseña, Correo: @client.Correo, DNI: @client.DNI, Direccion: @client.Direccion, Nombre: @client.Nombre, Telefono: @client.Telefono, Usuario: @client.Usuario }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
