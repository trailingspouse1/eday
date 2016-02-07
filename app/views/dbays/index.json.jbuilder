json.array!(@dbays) do |dbay|
  json.extract! dbay, :id, :title, :price, :description
  json.url dbay_url(dbay, format: :json)
end
