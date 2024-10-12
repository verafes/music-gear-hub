json.extract! instrument, :id, :name, :category, :price_per_day, :available, :condition, :image, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)
