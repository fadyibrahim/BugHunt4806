json.array!(@bug_creations) do |bug_creation|
  json.extract! bug_creation, :id, :timestamp
  json.url bug_creation_url(bug_creation, format: :json)
end
