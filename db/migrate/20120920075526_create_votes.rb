class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :votes
      t.integer :post_id

      t.timestamps
    end
  end
end
