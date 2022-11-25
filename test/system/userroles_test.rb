require "application_system_test_case"

class UserrolesTest < ApplicationSystemTestCase
  setup do
    @userrole = userroles(:one)
  end

  test "visiting the index" do
    visit userroles_url
    assert_selector "h1", text: "Userroles"
  end

  test "should create userrole" do
    visit userroles_url
    click_on "New userrole"

    fill_in "Namerole", with: @userrole.namerole
    click_on "Create Userrole"

    assert_text "Userrole was successfully created"
    click_on "Back"
  end

  test "should update Userrole" do
    visit userrole_url(@userrole)
    click_on "Edit this userrole", match: :first

    fill_in "Namerole", with: @userrole.namerole
    click_on "Update Userrole"

    assert_text "Userrole was successfully updated"
    click_on "Back"
  end

  test "should destroy Userrole" do
    visit userrole_url(@userrole)
    click_on "Destroy this userrole", match: :first

    assert_text "Userrole was successfully destroyed"
  end
end
