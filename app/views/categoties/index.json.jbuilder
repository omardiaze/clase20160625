json.array!(@categoties) do |categoty|
  json.extract! categoty, :id, :name, :description
  json.url categoty_url(categoty, format: :json)
end
