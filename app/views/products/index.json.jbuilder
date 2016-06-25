json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :categoty_id
  json.url product_url(product, format: :json)
end
