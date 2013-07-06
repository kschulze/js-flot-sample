json.array!(@filberts) do |filbert|
  json.extract! filbert, :name, :gezuntas
  json.url filbert_url(filbert, format: :json)
end
