json.extract! comment, :id, :message, :question_id, :client_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
