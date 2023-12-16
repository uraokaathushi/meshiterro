class ReCreatePostImages < ActiveRecord::Migration[6.1]
  def change
    drop_table :post_images if ActiveRecord::Base.connection.table_exists?(:post_images)

    create_table :post_images do |t|
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end
