require "application_system_test_case"

class InquilinosTest < ApplicationSystemTestCase
  setup do
    @inquilino = inquilinos(:one)
  end

  test "visiting the index" do
    visit inquilinos_url
    assert_selector "h1", text: "Inquilinos"
  end

  test "should create inquilino" do
    visit inquilinos_url
    click_on "New inquilino"

    fill_in "Andar", with: @inquilino.andar
    fill_in "Complemento", with: @inquilino.complemento
    fill_in "Email", with: @inquilino.email
    fill_in "Name", with: @inquilino.name
    fill_in "Numero", with: @inquilino.numero
    fill_in "Sobrenome", with: @inquilino.sobrenome
    fill_in "Telefone", with: @inquilino.telefone
    click_on "Create Inquilino"

    assert_text "Inquilino was successfully created"
    click_on "Back"
  end

  test "should update Inquilino" do
    visit inquilino_url(@inquilino)
    click_on "Edit this inquilino", match: :first

    fill_in "Andar", with: @inquilino.andar
    fill_in "Complemento", with: @inquilino.complemento
    fill_in "Email", with: @inquilino.email
    fill_in "Name", with: @inquilino.name
    fill_in "Numero", with: @inquilino.numero
    fill_in "Sobrenome", with: @inquilino.sobrenome
    fill_in "Telefone", with: @inquilino.telefone
    click_on "Update Inquilino"

    assert_text "Inquilino was successfully updated"
    click_on "Back"
  end

  test "should destroy Inquilino" do
    visit inquilino_url(@inquilino)
    click_on "Destroy this inquilino", match: :first

    assert_text "Inquilino was successfully destroyed"
  end
end
