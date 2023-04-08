class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :posts, table_name: :comments do |t|
      t.text :text
      t.timestamps
    end
  end
end
