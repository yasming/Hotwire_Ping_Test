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

  test "should create ping with positive response" do
    mock_duration          = OpenStruct.new
    mock_duration.duration = 5
    mock_duration.ping     = true
    Net::Ping::HTTP.stub :new, mock_duration do
      post pings_url(format: :turbo_stream)
      assert_response :success
      assert_match "5", response.body
      assert_select "div", "5"
    end
  end

  test "should create ping with negative response" do
    mock_duration          = OpenStruct.new
    mock_duration.ping     = false
    Net::Ping::HTTP.stub :new, mock_duration do
      post pings_url(format: :turbo_stream)
      assert_response :success
      assert_match "ping could not be sent", response.body
      assert_select "div", "ping could not be sent"
    end
  end
end
