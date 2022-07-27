require 'test_helper'
require 'minitest/mock'
require 'webmock/minitest'
require 'minitest/autorun'

class PingsHelperTest < ActionView::TestCase
  include PingsHelper
  def setup
    WebMock.disable_net_connect!
  end

  test 'it should test get_duration method with positive response' do
    mock_duration          = OpenStruct.new
    mock_duration.duration = 5
    mock_duration.ping     = true
    Net::Ping::HTTP.stub :new, mock_duration do
      assert_equal 5, get_duration
    end
  end

  test 'it should test get_duration method with negative response' do
    mock_duration          = OpenStruct.new
    mock_duration.ping     = false
    Net::Ping::HTTP.stub :new, mock_duration do
      assert_equal 'ping could not be sent', get_duration
    end
  end
end