class FixColumnNames < ActiveRecord::Migration[5.1]
  def up
	rename_column(:books, "published-date", "PublishedDate")
	rename_column(:books, "price", "Price")
  end
end
