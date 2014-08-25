json.array!(@web_pages) do |web_page|
  json.extract! web_page, :id, :title, :body
  json.url web_page_url(web_page, format: :json)
end
