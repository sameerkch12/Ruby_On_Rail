require "test_helper"

class PortalsControllerTest < ActionDispatch::IntegrationTest
  test "should get receptionist" do
    get portals_receptionist_url
    assert_response :success
  end

  test "should get doctor" do
    get portals_doctor_url
    assert_response :success
  end
end
