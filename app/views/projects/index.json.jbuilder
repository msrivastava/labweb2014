json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :isactive, :url, :miscattributes, :research_area_id
  json.url project_url(project, format: :json)
end
