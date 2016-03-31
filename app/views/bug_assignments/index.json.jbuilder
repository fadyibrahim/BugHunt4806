json.array!(@bug_assignments) do |bug_assignment|
  json.extract! bug_assignment, :id, :timestamp
  json.url bug_assignment_url(bug_assignment, format: :json)
end
