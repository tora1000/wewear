require 'test_helper'

class CoordinationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coordinations_index_url
    assert_response :success
  end

end
