json.array! @purchases do |purchase|
  json.partial! 'purchases/purchase', purchase: purchase
  # show the session details only id, movie_id, times and dates for each purchase
  json.session do
    json.id purchase.session.id
    json.movie_id purchase.session.movie_id
    json.times purchase.session.times
    json.dates purchase.session.dates
  end

end