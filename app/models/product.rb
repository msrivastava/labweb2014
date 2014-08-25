class Product < ActiveRecord::Base
  belongs_to :product_category
  has_many :product_person_maps
  has_many :people, :through => product_person_maps
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :research_areas
  has_and_belongs_to_many :grants
  belongs_to :main_research_area, :class_name => "ResearchArea", :foreign_key => "main_research_area_id"
end
