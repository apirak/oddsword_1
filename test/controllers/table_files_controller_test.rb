require "test_helper"

class TableFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_file = table_files(:one)
  end

  test "should get index" do
    get table_files_url
    assert_response :success
  end

  test "should get new" do
    get new_table_file_url
    assert_response :success
  end

  test "should create table_file" do
    assert_difference("TableFile.count") do
      post table_files_url, params: { table_file: { name: @table_file.name } }
    end

    assert_redirected_to table_file_url(TableFile.last)
  end

  test "should show table_file" do
    get table_file_url(@table_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_file_url(@table_file)
    assert_response :success
  end

  test "should update table_file" do
    patch table_file_url(@table_file), params: { table_file: { name: @table_file.name } }
    assert_redirected_to table_file_url(@table_file)
  end

  test "should destroy table_file" do
    assert_difference("TableFile.count", -1) do
      delete table_file_url(@table_file)
    end

    assert_redirected_to table_files_url
  end
end
