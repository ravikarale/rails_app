class DocumentKeyword < ApplicationRecord
  belongs_to :document
  belongs_to :keyword
end
