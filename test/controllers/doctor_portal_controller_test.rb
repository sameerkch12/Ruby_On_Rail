require "test_helper"

class DoctorPortalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doctor_portal_index_url
    assert_response :success
  end
end
