require 'test_helper'

class UpdateResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get update_results_index_url
    assert_response :success
  end

end
