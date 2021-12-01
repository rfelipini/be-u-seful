require "test_helper"

class FieldsOfInterestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fields_of_interests_new_url
    assert_response :success
  end
end
