class AddEmailToUsers < ActiveRecord::Migration
  def up
  	add_column :users, :email, :string
  end
end
