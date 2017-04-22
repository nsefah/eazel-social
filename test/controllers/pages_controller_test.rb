require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get pages_profile_url
    assert_response :success
  end

  test "should get artists" do
    get pages_artists_url
    assert_response :success
  end

  test "should get themes" do
    get pages_themes_url
    assert_response :success
  end

  test "should get highlights" do
    get pages_highlights_url
    assert_response :success
  end

end
