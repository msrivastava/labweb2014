class Document < ActiveRecord::Base
  belongs_to :document_category
  has_many :document_person_maps
  has_many :people, :through => :document_person_maps
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :research_areas
  has_and_belongs_to_many :grants
end
