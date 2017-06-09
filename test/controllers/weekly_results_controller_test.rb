require 'test_helper'

class WeeklyResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weekly_results_index_url
    assert_response :success
  end

end
