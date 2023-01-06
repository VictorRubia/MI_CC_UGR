require "test_helper"

class NewslettersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one).generate_jwt
    @newsletter = newsletters(:one)
  end

  test "should get index" do
    get newsletters_url, as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response :success
  end

  test "should create newsletter" do
    assert_difference("Newsletter.count") do
      post newsletters_url, params: { newsletter: { email: "prueba@prueba.com" } }, as: :json
    end

    assert_response :created
  end

  test "should show newsletter" do
    get newsletter_url(@newsletter), as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response :success
  end

  test "should destroy newsletter" do
    assert_difference("Newsletter.count", -1) do
      delete newsletter_url(@newsletter), as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    end

    assert_response :no_content
  end
end
