require 'test_helper'

class ConvictionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get convictions_new_url
    assert_response :success
  end

end
