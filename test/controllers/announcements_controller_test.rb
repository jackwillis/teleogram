require "test_helper"

class AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get root_url, headers: { Authorization: HTTP_AUTHORIZATION }
    assert_response :success
  end

  test "should get index" do
    get announcements_url, headers: { Authorization: HTTP_AUTHORIZATION }
    assert_response :success
  end

  test "should get create" do
    get create_announcement_url, headers: { Authorization: HTTP_AUTHORIZATION }
    assert_response :success
  end
end
