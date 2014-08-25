class Person < ActiveRecord::Base
  belongs_to :person_category
  has_many :document_person_maps
  has_many: documents, :through => :document_person_maps
  has_many: product_person_maps
  has_many: products, :through => :product_person_maps
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :grants
  has_and_belongs_to_many :research_areas
end
