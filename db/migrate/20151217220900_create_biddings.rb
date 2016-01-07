class CreateBiddings < ActiveRecord::Migration
  def change
    create_table :biddings do |t|
    	t.decimal :amount
    	t.string :user_id
    	t.string :product_id

      t.timestamps null: false
    end
  end
end
