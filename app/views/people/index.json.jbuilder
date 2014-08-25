json.array!(@people) do |person|
  json.extract! person, :id, :lastname, :firstname, :middleinitial, :webname, :email, :url, :urlphoto, :phonework, :phonehome, :phonecell, :fax, :addressoffice, :addresslab, :addressmail, :department, :urldepartment, :organization, :urlorganization, :biography, :researchinterests, :education, :professionalexperience, :professionalservice, :otherpublications, :patents, :awards, :skills, :interests, :secretary, :bs_year, :bs_title, :bs_school, :bs_field, :bs_in_lab, :ms_year, :ms_title, :ms_school, :ms_field, :ms_thesis, :ms_in_lab, :phd_year, :phd_title, :phd_school, :phd_field, :phd_thesis, :phd_in_lab, :miscattributes, :person_category_id
  json.url person_url(person, format: :json)
end
