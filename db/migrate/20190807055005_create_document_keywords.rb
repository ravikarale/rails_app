class CreateDocumentKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :document_keywords do |t|
      t.integer :keyword_id
      t.integer :document_id

      t.timestamps
    end
  end
end
