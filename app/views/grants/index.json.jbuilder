json.array!(@grants) do |grant|
  json.extract! grant, :id, :name, :description, :url, :startdate, :enddate, :totalawardamount, :fundingagencyname, :awardnumber, :fundingagencyurl, :fundingagencylogourl, :fundingagencygranturl, :programname, :programurl, :miscattributes, :research_area_id
  json.url grant_url(grant, format: :json)
end
