class FixColumnNames < ActiveRecord::Migration[5.1]
  def up
	rename_column("Books", "published-date", "PublishedDate")
	rename_column("Books", "price", "Price")
  end
end
