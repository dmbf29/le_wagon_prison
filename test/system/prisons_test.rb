require "application_system_test_case"

class PrisonsTest < ApplicationSystemTestCase
  setup do
    @prison = prisons(:one)
  end

  test "visiting the index" do
    visit prisons_url
    assert_selector "h1", text: "Prisons"
  end

  test "creating a Prison" do
    visit prisons_url
    click_on "New Prison"

    fill_in "Banner url", with: @prison.banner_url
    fill_in "Name", with: @prison.name
    click_on "Create Prison"

    assert_text "Prison was successfully created"
    click_on "Back"
  end

  test "updating a Prison" do
    visit prisons_url
    click_on "Edit", match: :first

    fill_in "Banner url", with: @prison.banner_url
    fill_in "Name", with: @prison.name
    click_on "Update Prison"

    assert_text "Prison was successfully updated"
    click_on "Back"
  end

  test "destroying a Prison" do
    visit prisons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prison was successfully destroyed"
  end
end
