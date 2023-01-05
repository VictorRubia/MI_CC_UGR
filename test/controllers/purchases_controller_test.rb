require "test_helper"

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one).generate_jwt
    @purchase = purchases(:one)
  end

  test "should get index" do
    get purchases_url, as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response :success
  end

  test "should create purchase" do
    assert_difference("Purchase.count") do
      post purchases_url, params: { purchase: { email: @purchase.email, num_tickets: @purchase.num_tickets, price: @purchase.price, session_id: @purchase.session_id, timestamp: @purchase.timestamp } }, as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    end

    assert_response :created
  end

  test "should show purchase" do
    get purchase_url(@purchase), as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response :success
  end

  test "should update purchase" do
    patch purchase_url(@purchase), params: { purchase: { email: @purchase.email, num_tickets: @purchase.num_tickets, price: @purchase.price, session_id: @purchase.session_id, timestamp: @purchase.timestamp } }, as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response :success
  end

  test "should destroy purchase" do
    assert_difference("Purchase.count", -1) do
      delete purchase_url(@purchase), as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    end

    assert_response :no_content
  end
end
