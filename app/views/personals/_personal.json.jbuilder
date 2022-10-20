json.extract! personal, :id, :first_name, :last_name, :nick_name, :email, :phone, :created_at, :updated_at
json.url personal_url(personal, format: :json)
