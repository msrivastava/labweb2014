class Grant < ActiveRecord::Base
  has_and_belongs_to_many :research_areas
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :people
  has_and_belongs_to_many :documents
  has_and_belongs_to_many :products
end
