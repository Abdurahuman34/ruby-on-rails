require "test_helper"

class DonationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get donation_new_url
    assert_response :success
  end

  test "should get create" do
    get donation_create_url
    assert_response :success
  end
end
