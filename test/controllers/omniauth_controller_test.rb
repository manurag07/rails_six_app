require 'test_helper'

class OmniauthControllerTest < ActionDispatch::IntegrationTest
  test "should get facebook" do
    get omniauth_facebook_url
    assert_response :success
  end

  test "should get github" do
    get omniauth_github_url
    assert_response :success
  end

end
