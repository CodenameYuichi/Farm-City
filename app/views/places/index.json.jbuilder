json.array!(@places) do |place|
  json.extract! place, :id, :name, :width, :height, :description, :user_id
  json.url place_url(place, format: :json)
end
