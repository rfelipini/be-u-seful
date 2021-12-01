require "test_helper"

class PortfolioTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get portfolio_types_new_url
    assert_response :success
  end
end
