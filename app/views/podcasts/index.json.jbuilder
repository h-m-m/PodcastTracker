json.array!(@podcasts) do |podcast|
  json.extract! podcast, :id, :title, :url
  json.url podcast_url(podcast, format: :json)
end
