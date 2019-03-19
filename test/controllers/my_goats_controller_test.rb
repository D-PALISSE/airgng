require 'test_helper'

class MyGoatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get my_goats_new_url
    assert_response :success
  end

  test "should get create" do
    get my_goats_create_url
    assert_response :success
  end

end
