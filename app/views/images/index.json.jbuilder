json.array!(@images) do |image|
  json.extract! image, :id, :picture, :place_id, :name
  json.url image_url(image, format: :json)
end
