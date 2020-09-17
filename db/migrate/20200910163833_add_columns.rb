class AddColumns < ActiveRecord::Migration[5.1]
  def change
	add_column(:books, "published-date", :string)
	add_column(:books, "price", :int)
  end
end
