json.extract! product, :id, :name, :picture, :vendor_code, :price, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
json.picture url_for(product.picture)
