class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :author_id, :bigint
    add_column :comments, :post_id, :bigint
  end
end
