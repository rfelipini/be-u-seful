require "test_helper"

class StudentSkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get student_skills_new_url
    assert_response :success
  end
end
