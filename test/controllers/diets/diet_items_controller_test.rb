require "test_helper"

class Diets::DietItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diets_diet_item = diets_diet_items(:one)
  end

  test "should get index" do
    get diets_diet_items_url
    assert_response :success
  end

  test "should get new" do
    get new_diets_diet_item_url
    assert_response :success
  end

  test "should create diets_diet_item" do
    assert_difference('Diets::DietItem.count') do
      post diets_diet_items_url, params: { diets_diet_item: {  } }
    end

    assert_redirected_to diets_diet_item_url(Diets::DietItem.last)
  end

  test "should show diets_diet_item" do
    get diets_diet_item_url(@diets_diet_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_diets_diet_item_url(@diets_diet_item)
    assert_response :success
  end

  test "should update diets_diet_item" do
    patch diets_diet_item_url(@diets_diet_item), params: { diets_diet_item: {  } }
    assert_redirected_to diets_diet_item_url(@diets_diet_item)
  end

  test "should destroy diets_diet_item" do
    assert_difference('Diets::DietItem.count', -1) do
      delete diets_diet_item_url(@diets_diet_item)
    end

    assert_redirected_to diets_diet_items_url
  end
end
