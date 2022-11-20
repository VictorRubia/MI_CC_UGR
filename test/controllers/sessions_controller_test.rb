require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
    @session = sessions(:one)
  end

  test "should get index" do
    get sessions_url, as: :json
    assert_response :success
  end

  test "should create session" do
    assert_difference("Session.count") do
      post sessions_url, params: { session: { dates: @session.dates, movie_id: @session.movie_id, times: '21:00' } }, as: :json
    end

    assert_response 201
  end

  test "should show session" do
    get session_url(@session), as: :json
    assert_response :success
  end

  test "should update session" do
    patch session_url(@session), params: { session: { dates: @session.dates, movie_id: @session.movie_id, times: @session.times } }, as: :json
    assert_response :success
  end

  test "should destroy session" do
    assert_difference("Session.count", -1) do
      delete session_url(@session), as: :json
    end

    assert_response :no_content
  end

  test "get sessions for a date" do
    movie = get "/cartelera?dates=17/07/2022", as: :json
    assert_response :success
  end

  test "get sessions for today" do
    get "/cartelera", as: :json
    assert_response :success
  end
end
