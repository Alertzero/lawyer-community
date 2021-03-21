json.extract! question, :id, :title, :body, :category_id, :clients_id, :created_at, :updated_at
json.url question_url(question, format: :json)
