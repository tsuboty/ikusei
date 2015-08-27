json.array!(@plants) do |plant|
  json.extract! plant, :id, :user_name, :pic_url, :temp, :humidity, :water_height, :ele_cond
  json.url plant_url(plant, format: :json)
end
