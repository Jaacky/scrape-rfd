require 'test_helper'

class ScrapeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scrape_index_url
    assert_response :success
  end

end
