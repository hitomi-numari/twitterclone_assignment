require 'test_helper'

class TweetmesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tweetmes_index_url
    assert_response :success
  end

end
