json.array!(@hunts) do |hunt|
  json.extract! hunt, :id, :start, :end, :percentage, :description, :url
  json.url hunt_url(hunt, format: :json)
end
