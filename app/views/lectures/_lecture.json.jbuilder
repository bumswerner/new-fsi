json.extract! lecture, :id, :name, :symbol, :description, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
