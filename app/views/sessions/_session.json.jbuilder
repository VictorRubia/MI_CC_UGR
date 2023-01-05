json.extract! session, :id, :movie_id, :times, :dates, :num_tickets, :price, :created_at, :updated_at
json.url session_url(session, format: :json)
