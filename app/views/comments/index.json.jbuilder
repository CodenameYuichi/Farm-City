json.array!(@comments) do |comment|
  json.extract! comment, :id, :text, :user_id, :place_id
  json.url comment_url(comment, format: :json)
end
