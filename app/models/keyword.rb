class Keyword < ApplicationRecord
  has_many :document_keywords
  has_many :documents, through: :document_keywords
end
