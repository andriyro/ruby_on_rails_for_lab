require "application_system_test_case"

class WaresTest < ApplicationSystemTestCase
  setup do
    @ware = wares(:one)
  end

  test "visiting the index" do
    visit wares_url
    assert_selector "h1", text: "Wares"
  end

  test "should create ware" do
    visit wares_url
    click_on "New ware"

    fill_in "Name product", with: @ware.name_product
    fill_in "Price", with: @ware.price
    click_on "Create Ware"

    assert_text "Ware was successfully created"
    click_on "Back"
  end

  test "should update Ware" do
    visit ware_url(@ware)
    click_on "Edit this ware", match: :first

    fill_in "Name product", with: @ware.name_product
    fill_in "Price", with: @ware.price
    click_on "Update Ware"

    assert_text "Ware was successfully updated"
    click_on "Back"
  end

  test "should destroy Ware" do
    visit ware_url(@ware)
    click_on "Destroy this ware", match: :first

    assert_text "Ware was successfully destroyed"
  end
end
