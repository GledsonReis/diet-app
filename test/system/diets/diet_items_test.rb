require "application_system_test_case"

class Diets::DietItemsTest < ApplicationSystemTestCase
  setup do
    @diets_diet_item = diets_diet_items(:one)
  end

  test "visiting the index" do
    visit diets_diet_items_url
    assert_selector "h1", text: "Diets/Diet Items"
  end

  test "creating a Diet item" do
    visit diets_diet_items_url
    click_on "New Diets/Diet Item"

    click_on "Create Diet item"

    assert_text "Diet item was successfully created"
    click_on "Back"
  end

  test "updating a Diet item" do
    visit diets_diet_items_url
    click_on "Edit", match: :first

    click_on "Update Diet item"

    assert_text "Diet item was successfully updated"
    click_on "Back"
  end

  test "destroying a Diet item" do
    visit diets_diet_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diet item was successfully destroyed"
  end
end
