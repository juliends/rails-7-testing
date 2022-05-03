require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_path

    assert_selector "h1", text: "Awesome Products"
  end

  test "lets a signed in user create a new product" do
    login_as users(:george)
    visit "/products/new"
    # take_screenshot

    fill_in "product_name", with: "Le Wagon"
    # take_screenshot

    click_on "Create Product"
    # take_screenshot

    # Should be redirected to Home with new product
    assert_text "Awesome Products"
  end
end
