class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :type
      t.integer :state
      t.string :title
      t.text :body

      t.timestamps
    end

    create_table :post_states do |t|
      t.string :name

      t.timestamps
    end
    add_foreign_key :posts, :post_states, column: :state

    create_table :post_types, id: :string do |t|
      t.timestamps
    end
    add_foreign_key :posts, :post_types, column: :type
  end
end
