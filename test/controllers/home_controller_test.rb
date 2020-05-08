require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get gossip" do
    get home_gossip_url
    assert_response :success
  end

end
