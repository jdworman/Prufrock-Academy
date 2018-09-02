require 'test_helper'

class PrincipalControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get principal_edit_url
    assert_response :success
  end

  test "should get index" do
    get principal_index_url
    assert_response :success
  end

  test "should get new" do
    get principal_new_url
    assert_response :success
  end

  test "should get show" do
    get principal_show_url
    assert_response :success
  end

end
