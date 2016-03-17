json.array!(@bugs) do |bug|
  json.extract! bug, :id, :name, :points, :completed, :url, :created
  json.url bug_url(bug, format: :json)
end
