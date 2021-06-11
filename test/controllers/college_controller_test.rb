require "test_helper"

class CollegeControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get college_name:string_url
    assert_response :success
  end

  test "should get enrollno:integer" do
    get college_enrollno:integer_url
    assert_response :success
  end

  test "should get standard:integer" do
    get college_standard:integer_url
    assert_response :success
  end

  test "should get subject:string" do
    get college_subject:string_url
    assert_response :success
  end
end
