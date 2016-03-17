json.array!(@users) do |user|
  json.extract! user, :id, :name, :title, :score, :pwd, :email
  json.url user_url(user, format: :json)
end
