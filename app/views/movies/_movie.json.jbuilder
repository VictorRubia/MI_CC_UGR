json.extract! movie, :id, :title, :synopsis, :launch_date, :age_classification, :length, :genre, :director, :poster, :rating_avg, :created_at, :updated_at
json.url movie_url(movie, format: :json)
