class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.text :content
      t.text :content_html

      t.timestamps
    end
  end
end
