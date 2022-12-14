require "test_helper"

class InquilinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquilino = inquilinos(:one)
  end

  test "should get index" do
    get inquilinos_url
    assert_response :success
  end

  test "should get new" do
    get new_inquilino_url
    assert_response :success
  end

  test "should create inquilino" do
    assert_difference("Inquilino.count") do
      post inquilinos_url, params: { inquilino: { andar: @inquilino.andar, complemento: @inquilino.complemento, email: @inquilino.email, name: @inquilino.name, numero: @inquilino.numero, sobrenome: @inquilino.sobrenome, telefone: @inquilino.telefone } }
    end

    assert_redirected_to inquilino_url(Inquilino.last)
  end

  test "should show inquilino" do
    get inquilino_url(@inquilino)
    assert_response :success
  end

  test "should get edit" do
    get edit_inquilino_url(@inquilino)
    assert_response :success
  end

  test "should update inquilino" do
    patch inquilino_url(@inquilino), params: { inquilino: { andar: @inquilino.andar, complemento: @inquilino.complemento, email: @inquilino.email, name: @inquilino.name, numero: @inquilino.numero, sobrenome: @inquilino.sobrenome, telefone: @inquilino.telefone } }
    assert_redirected_to inquilino_url(@inquilino)
  end

  test "should destroy inquilino" do
    assert_difference("Inquilino.count", -1) do
      delete inquilino_url(@inquilino)
    end

    assert_redirected_to inquilinos_url
  end
end
