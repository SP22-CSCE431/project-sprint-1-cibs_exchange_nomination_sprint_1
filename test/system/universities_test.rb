require "application_system_test_case"

class UniversitiesTest < ApplicationSystemTestCase
  setup do
    @university = universities(:one)
  end

  test "visiting the index" do
    visit universities_url
    assert_selector "h1", text: "Universities"
  end

  test "creating a University" do
    visit universities_url
    click_on "New University"

    fill_in "Num students", with: @university.num_students
    fill_in "Rep email", with: @university.rep_email
    fill_in "Rep first name", with: @university.rep_first_name
    fill_in "Rep last name", with: @university.rep_last_name
    fill_in "Rep title", with: @university.rep_title
    fill_in "University name", with: @university.university_name
    click_on "Create University"

    assert_text "University was successfully created"
    click_on "Back"
  end

  test "updating a University" do
    visit universities_url
    click_on "Edit", match: :first

    fill_in "Num students", with: @university.num_students
    fill_in "Rep email", with: @university.rep_email
    fill_in "Rep first name", with: @university.rep_first_name
    fill_in "Rep last name", with: @university.rep_last_name
    fill_in "Rep title", with: @university.rep_title
    fill_in "University name", with: @university.university_name
    click_on "Update University"

    assert_text "University was successfully updated"
    click_on "Back"
  end

  test "destroying a University" do
    visit universities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "University was successfully destroyed"
  end
end
