require "application_system_test_case"

class TableFilesTest < ApplicationSystemTestCase
  setup do
    @table_file = table_files(:one)
  end

  test "visiting the index" do
    visit table_files_url
    assert_selector "h1", text: "Table files"
  end

  test "should create table file" do
    visit table_files_url
    click_on "New table file"

    fill_in "Name", with: @table_file.name
    click_on "Create Table file"

    assert_text "Table file was successfully created"
    click_on "Back"
  end

  test "should update Table file" do
    visit table_file_url(@table_file)
    click_on "Edit this table file", match: :first

    fill_in "Name", with: @table_file.name
    click_on "Update Table file"

    assert_text "Table file was successfully updated"
    click_on "Back"
  end

  test "should destroy Table file" do
    visit table_file_url(@table_file)
    click_on "Destroy this table file", match: :first

    assert_text "Table file was successfully destroyed"
  end
end
