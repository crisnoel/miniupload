json.array!(@uploads) do |upload|
  json.extract! upload, :fileName, :description, :tags, :user_id
  json.url upload_url(upload, format: :json)
end
