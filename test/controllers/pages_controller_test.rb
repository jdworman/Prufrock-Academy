require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get students" do
    get pages_students_url
    assert_response :success
  end

  test "should get instructors" do
    get pages_instructors_url
    assert_response :success
  end

  test "should get courses" do
    get pages_courses_url
    assert_response :success
  end

  test "should get cohorts" do
    get pages_cohorts_url
    assert_response :success
  end

end
