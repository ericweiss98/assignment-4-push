class MakeDateType < ActiveRecord::Migration[5.1]
  def up
	change_column("Books", "PublishedDate", :date)
  end

  def down
	change_column("Books", "PublishedDate", :string)
  end
end
