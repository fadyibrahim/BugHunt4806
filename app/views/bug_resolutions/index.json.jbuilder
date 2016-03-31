json.array!(@bug_resolutions) do |bug_resolution|
  json.extract! bug_resolution, :id, :timestamp
  json.url bug_resolution_url(bug_resolution, format: :json)
end
