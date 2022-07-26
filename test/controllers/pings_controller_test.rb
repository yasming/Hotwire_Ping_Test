require "test_helper"

class PingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pings_url
    assert_response :success
  end

  test "should get new" do
    get new_ping_url
    assert_response :success
  end

  # test "should create ping" do
  #   assert_difference("Ping.count") do
  #     post pings_url, params: { ping: {  } }
  #   end
  #
  #   assert_redirected_to ping_url(Ping.last)
  # end
end
