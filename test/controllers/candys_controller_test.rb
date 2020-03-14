require 'test_helper'

class CandysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get candys_index_url
    assert_response :success
  end

end
