require 'test_helper'

class MensajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mensaje = mensajes(:one)
  end

  test "should get index" do
    get mensajes_url
    assert_response :success
  end

  test "should get new" do
    get new_mensaje_url
    assert_response :success
  end

  test "should create mensaje" do
    assert_difference('Mensaje.count') do
      post mensajes_url, params: { mensaje: { contactos: @mensaje.contactos, texto: @mensaje.texto } }
    end

    assert_redirected_to mensaje_url(Mensaje.last)
  end

  test "should show mensaje" do
    get mensaje_url(@mensaje)
    assert_response :success
  end

  test "should get edit" do
    get edit_mensaje_url(@mensaje)
    assert_response :success
  end

  test "should update mensaje" do
    patch mensaje_url(@mensaje), params: { mensaje: { contactos: @mensaje.contactos, texto: @mensaje.texto } }
    assert_redirected_to mensaje_url(@mensaje)
  end

  test "should destroy mensaje" do
    assert_difference('Mensaje.count', -1) do
      delete mensaje_url(@mensaje)
    end

    assert_redirected_to mensajes_url
  end
end
