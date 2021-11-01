require "application_system_test_case"

class BuildingsTest < ApplicationSystemTestCase
  setup do
    @building = buildings(:one)
  end

  test "visiting the index" do
    visit buildings_url
    assert_selector "h1", text: "Buildings"
  end

  test "creating a Building" do
    visit buildings_url
    click_on "New Building"

    fill_in "Calle", with: @building.calle
    fill_in "Codigo postal", with: @building.codigo_postal
    fill_in "Comuna", with: @building.comuna
    fill_in "Nombre edificio", with: @building.nombre_edificio
    fill_in "Numero", with: @building.numero
    fill_in "Region", with: @building.region
    click_on "Create Building"

    assert_text "Building was successfully created"
    click_on "Back"
  end

  test "updating a Building" do
    visit buildings_url
    click_on "Edit", match: :first

    fill_in "Calle", with: @building.calle
    fill_in "Codigo postal", with: @building.codigo_postal
    fill_in "Comuna", with: @building.comuna
    fill_in "Nombre edificio", with: @building.nombre_edificio
    fill_in "Numero", with: @building.numero
    fill_in "Region", with: @building.region
    click_on "Update Building"

    assert_text "Building was successfully updated"
    click_on "Back"
  end

  test "destroying a Building" do
    visit buildings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Building was successfully destroyed"
  end
end
