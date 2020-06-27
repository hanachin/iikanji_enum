class CreatePostTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :post_types, id: :string do |t|

      t.timestamps
    end

    add_foreign_key :posts, :post_types, column: :type
  end
end
