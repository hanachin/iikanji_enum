class CreateDraftPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :draft_posts do |t|
      t.string :type
      t.integer :state
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
