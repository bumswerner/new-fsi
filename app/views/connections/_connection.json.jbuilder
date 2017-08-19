json.extract! connection, :id, :name, :lecture_id, :section_id, :created_at, :updated_at
json.url connection_url(connection, format: :json)
