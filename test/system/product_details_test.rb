require "application_system_test_case"

class ProductDetailsTest < ApplicationSystemTestCase
  setup do
    @product_detail = product_details(:one)
  end

  test "visiting the index" do
    visit product_details_url
    assert_selector "h1", text: "Product Details"
  end

  test "creating a Product detail" do
    visit product_details_url
    click_on "New Product Detail"

    fill_in "Color", with: @product_detail.color
    fill_in "Regular price", with: @product_detail.regular_price
    fill_in "Selling price", with: @product_detail.selling_price
    fill_in "Size", with: @product_detail.size
    fill_in "Stock quantity", with: @product_detail.stock_quantity
    fill_in "Weight", with: @product_detail.weight
    click_on "Create Product detail"

    assert_text "Product detail was successfully created"
    click_on "Back"
  end

  test "updating a Product detail" do
    visit product_details_url
    click_on "Edit", match: :first

    fill_in "Color", with: @product_detail.color
    fill_in "Regular price", with: @product_detail.regular_price
    fill_in "Selling price", with: @product_detail.selling_price
    fill_in "Size", with: @product_detail.size
    fill_in "Stock quantity", with: @product_detail.stock_quantity
    fill_in "Weight", with: @product_detail.weight
    click_on "Update Product detail"

    assert_text "Product detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Product detail" do
    visit product_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product detail was successfully destroyed"
  end
end
