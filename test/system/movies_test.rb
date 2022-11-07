require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h1", text: "Movies"
  end

  test "should create movie" do
    visit movies_url
    click_on "New movie"

    fill_in "Age classification", with: @movie.age_classification
    fill_in "Director", with: @movie.director
    fill_in "Genre", with: @movie.genre
    fill_in "Launch date", with: @movie.launch_date
    fill_in "Length", with: @movie.length
    fill_in "Poster", with: @movie.poster
    fill_in "Rating avg", with: @movie.rating_avg
    fill_in "Synopsis", with: @movie.synopsis
    fill_in "Title", with: @movie.title
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "should update Movie" do
    visit movie_url(@movie)
    click_on "Edit this movie", match: :first

    fill_in "Age classification", with: @movie.age_classification
    fill_in "Director", with: @movie.director
    fill_in "Genre", with: @movie.genre
    fill_in "Launch date", with: @movie.launch_date
    fill_in "Length", with: @movie.length
    fill_in "Poster", with: @movie.poster
    fill_in "Rating avg", with: @movie.rating_avg
    fill_in "Synopsis", with: @movie.synopsis
    fill_in "Title", with: @movie.title
    click_on "Update Movie"

    assert_text "Movie was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie" do
    visit movie_url(@movie)
    click_on "Destroy this movie", match: :first

    assert_text "Movie was successfully destroyed"
  end
end
