require "application_system_test_case"

class PersonalsTest < ApplicationSystemTestCase
  setup do
    @personal = personals(:one)
  end

  test "visiting the index" do
    visit personals_url
    assert_selector "h1", text: "Personals"
  end

  test "should create personal" do
    visit personals_url
    click_on "New personal"

    fill_in "Email", with: @personal.email
    fill_in "First name", with: @personal.first_name
    fill_in "Last name", with: @personal.last_name
    fill_in "Nick name", with: @personal.nick_name
    fill_in "Phone", with: @personal.phone
    click_on "Create Personal"

    assert_text "Personal was successfully created"
    click_on "Back"
  end

  test "should update Personal" do
    visit personal_url(@personal)
    click_on "Edit this personal", match: :first

    fill_in "Email", with: @personal.email
    fill_in "First name", with: @personal.first_name
    fill_in "Last name", with: @personal.last_name
    fill_in "Nick name", with: @personal.nick_name
    fill_in "Phone", with: @personal.phone
    click_on "Update Personal"

    assert_text "Personal was successfully updated"
    click_on "Back"
  end

  test "should destroy Personal" do
    visit personal_url(@personal)
    click_on "Destroy this personal", match: :first

    assert_text "Personal was successfully destroyed"
  end
end
