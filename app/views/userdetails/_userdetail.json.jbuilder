json.extract! userdetail, :id, :name, :address, :user_id, :created_at, :updated_at
json.url userdetail_url(userdetail, format: :json)
