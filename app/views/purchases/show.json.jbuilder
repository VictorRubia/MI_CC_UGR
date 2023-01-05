json.partial! "purchases/purchase", purchase: @purchase
json.session do
  json.partial! 'sessions/session', session: Session.find(@purchase.session_id)
  json.movie do
    json.partial! 'movies/movie', movie: Movie.find(Session.find(@purchase.session_id).movie_id)
  end
end