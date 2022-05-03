require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_path

    assert_selector "h1", text: "Awesome Products"
  end

  test "lets a signed in user create a new product" do
    login_as users(:george)
    visit "/products/new"
    # save_and_open_screenshot

    fill_in "product_name", with: "Le Wagon"
    # save_and_open_screenshot

    click_on "Create Product"
    # take_screenshot

    # Should be redirected to Home with new product
    # assert_redirected_to root_path
    assert_text "Awesome Products"
  end
end
