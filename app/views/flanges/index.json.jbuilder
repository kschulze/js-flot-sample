json.array!(@flanges) do |flange|
  json.extract! flange, :name, :quantity
  json.url flange_url(flange, format: :json)
end
