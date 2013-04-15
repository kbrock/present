json.array!(@avatars) do |avatar|
  json.extract! avatar, :name, :location, :bag
  json.url avatar_url(avatar, format: :json)
end