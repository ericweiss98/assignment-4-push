class AddColumns < ActiveRecord::Migration[5.1]
  def change
	add_column(:books, "Published-date", :date)
	add_column(:books, "Price", :int)
  end
end
