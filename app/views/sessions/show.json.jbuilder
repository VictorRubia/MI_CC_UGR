json.partial! "sessions/session", session: @session
json.merge! Movie.find(@session.movie_id).attributes