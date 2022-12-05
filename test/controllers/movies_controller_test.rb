require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one).generate_jwt
    @movie = movies(:one)
  end

  test "should get index" do
    get movies_url, as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response :success
  end

  test "should create movie" do
    assert_difference("Movie.count") do
      post movies_url, params: { movie: { age_classification: @movie.age_classification, director: @movie.director, genre: @movie.genre, launch_date: @movie.launch_date, length: @movie.length, poster: @movie.poster, rating_avg: @movie.rating_avg, synopsis: @movie.synopsis, title: @movie.title } }, as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    end

    assert_response 201
  end

  test "should show movie" do
    get movie_url(@movie), as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { age_classification: @movie.age_classification, director: @movie.director, genre: @movie.genre, launch_date: @movie.launch_date, length: @movie.length, poster: @movie.poster, rating_avg: @movie.rating_avg, synopsis: @movie.synopsis, title: @movie.title } }, as: :json, headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    assert_response 200
  end

  test "should destroy movie" do
    assert_difference("Movie.count", -1) do
      delete movie_url(@movie), headers: { "HTTP_AUTHORIZATION" => "Token token=#{@user}" }
    end

    assert_response 204
  end
end
