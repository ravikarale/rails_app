class Document < ApplicationRecord
  has_many :document_keywords
  has_many :keywords, through: :document_keywords
end
