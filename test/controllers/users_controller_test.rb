require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one).generate_jwt
  end

  test "should get user" do
    get user_path, as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response :success
  end

end
