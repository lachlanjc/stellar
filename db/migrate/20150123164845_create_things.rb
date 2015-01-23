class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.boolean :pinned
      t.boolean :closed

      t.timestamps
    end
  end
end
