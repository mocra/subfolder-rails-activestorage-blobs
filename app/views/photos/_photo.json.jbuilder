json.extract! photo, :id, :label, :created_at, :updated_at
json.url photo_url(photo, format: :json)
