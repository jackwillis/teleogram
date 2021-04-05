require "test_helper"

class AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get root_url
    assert_response :success
  end

  test "should get index" do
    get announcements_url
    assert_response :success
  end

  test "should get create" do
    get create_announcement_url
    assert_response :success
  end
end
