require "test_helper"

class CertificatesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get certificates_new_url
    assert_response :success
  end
end
