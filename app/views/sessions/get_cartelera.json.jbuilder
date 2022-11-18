json.array! @movie do |movie|
  json.times @session.where(movie_id: movie.id).pluck(:times)
  json.movie movie.attributes.except("created_at", "updated_at")
end