json.array!(@fundations) do |fundation|
  json.extract! fundation, :id, :name, :website, :country, :age
  json.url fundation_url(fundation, format: :json)
end
