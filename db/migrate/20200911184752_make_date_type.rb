class MakeDateType < ActiveRecord::Migration[5.1]
  def up
	change_column(:books, "PublishedDate", :date)
  end

  def down
	change_column(:books, "PublishedDate", :string)
  end
end
