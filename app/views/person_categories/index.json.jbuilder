json.array!(@person_categories) do |person_category|
  json.extract! person_category, :id, :name
  json.url person_category_url(person_category, format: :json)
end
