class DocumentCategory < ActiveRecord::Base
  has_many :documents
end
