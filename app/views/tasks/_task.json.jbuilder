json.extract! task, :id, :title, :category_id, :deadline, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
