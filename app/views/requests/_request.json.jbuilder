json.extract! request, :id, :title, :body, :category_id, :clients_id, :created_at, :updated_at
json.url request_url(request, format: :json)
