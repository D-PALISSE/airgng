require 'test_helper'

class GoatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get goats_index_url
    assert_response :success
  end

end
