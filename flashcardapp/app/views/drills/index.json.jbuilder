json.array!(@drills) do |drill|
  json.extract! drill, :id, :name
  json.url drill_url(drill, format: :json)
end
