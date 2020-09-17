class AddColumns < ActiveRecord::Migration[5.1]
  def change
	add_column("Books", "published-date", :string)
	add_column("Books", "price", :int)
  end
end
