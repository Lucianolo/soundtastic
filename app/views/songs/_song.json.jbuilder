json.extract! song, :id, :title, :description, :length, :cover_url, :rating, :played_count, :created_at, :updated_at
json.url song_url(song, format: :json)
