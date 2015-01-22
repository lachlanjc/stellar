class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :title
      t.boolean :pinned

      t.timestamps
    end
  end
end
