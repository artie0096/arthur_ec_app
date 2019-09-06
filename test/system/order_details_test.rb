require "application_system_test_case"

class OrderDetailsTest < ApplicationSystemTestCase
  setup do
    @order_detail = order_details(:one)
  end

  test "visiting the index" do
    visit order_details_url
    assert_selector "h1", text: "Order Details"
  end

  test "creating a Order detail" do
    visit order_details_url
    click_on "New Order Detail"

    fill_in "Color", with: @order_detail.color
    fill_in "Regular price", with: @order_detail.regular_price
    fill_in "Selling price", with: @order_detail.selling_price
    fill_in "Size", with: @order_detail.size
    fill_in "Stock quantity", with: @order_detail.stock_quantity
    fill_in "Weight", with: @order_detail.weight
    click_on "Create Order detail"

    assert_text "Order detail was successfully created"
    click_on "Back"
  end

  test "updating a Order detail" do
    visit order_details_url
    click_on "Edit", match: :first

    fill_in "Color", with: @order_detail.color
    fill_in "Regular price", with: @order_detail.regular_price
    fill_in "Selling price", with: @order_detail.selling_price
    fill_in "Size", with: @order_detail.size
    fill_in "Stock quantity", with: @order_detail.stock_quantity
    fill_in "Weight", with: @order_detail.weight
    click_on "Update Order detail"

    assert_text "Order detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Order detail" do
    visit order_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order detail was successfully destroyed"
  end
end
