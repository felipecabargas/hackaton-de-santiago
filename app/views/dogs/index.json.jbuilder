json.array!(@dogs) do |dog|
  json.extract! dog, :id, :fundation_id, :name, :age, :breed
  json.url dog_url(dog, format: :json)
end
