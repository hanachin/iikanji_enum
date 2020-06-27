class CreatePostStates < ActiveRecord::Migration[6.0]
  def change
    create_table :post_states do |t|
      t.string :name

      t.timestamps
    end

    add_foreign_key :posts, :post_states, column: :state
  end
end
