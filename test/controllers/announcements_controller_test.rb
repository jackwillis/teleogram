require "test_helper"

class AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get announcements_new_url
    assert_response :success
  end

  test "should get index" do
    get announcements_index_url
    assert_response :success
  end

  test "should get create" do
    get announcements_create_url
    assert_response :success
  end
end
