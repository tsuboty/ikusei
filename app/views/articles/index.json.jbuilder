json.array!(@articles) do |article|
  json.extract! article, :id, :user_name, :pic_url, :temp, :humidity, :comment
  json.url article_url(article, format: :json)
end
