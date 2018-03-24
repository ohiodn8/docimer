json.extract! page, :id, :title, :sub_title, :body, :created_at, :updated_at
json.url page_url(page, format: :json)
