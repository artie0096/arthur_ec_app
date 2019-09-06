require "application_system_test_case"

class PayMethodsTest < ApplicationSystemTestCase
  setup do
    @pay_method = pay_methods(:one)
  end

  test "visiting the index" do
    visit pay_methods_url
    assert_selector "h1", text: "Pay Methods"
  end

  test "creating a Pay method" do
    visit pay_methods_url
    click_on "New Pay Method"

    fill_in "Fee", with: @pay_method.fee
    fill_in "Method", with: @pay_method.method
    fill_in "Name", with: @pay_method.name
    fill_in "Phone number", with: @pay_method.phone_number
    click_on "Create Pay method"

    assert_text "Pay method was successfully created"
    click_on "Back"
  end

  test "updating a Pay method" do
    visit pay_methods_url
    click_on "Edit", match: :first

    fill_in "Fee", with: @pay_method.fee
    fill_in "Method", with: @pay_method.method
    fill_in "Name", with: @pay_method.name
    fill_in "Phone number", with: @pay_method.phone_number
    click_on "Update Pay method"

    assert_text "Pay method was successfully updated"
    click_on "Back"
  end

  test "destroying a Pay method" do
    visit pay_methods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pay method was successfully destroyed"
  end
end
