json.extract! table_file, :id, :name, :created_at, :updated_at
json.url table_file_url(table_file, format: :json)
