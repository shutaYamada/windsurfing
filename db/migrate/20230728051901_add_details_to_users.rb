class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gerende, :text
    add_column :users, :sail_no, :string
  end
end
