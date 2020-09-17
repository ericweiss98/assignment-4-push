class AlterBook < ActiveRecord::Migration[5.1]
  def up
	change_column(:books, "Title", :string, :default => "Default")
	change_column(:books, "Genre", :string, :default => "Default")
	change_column(:books, "Author", :string, :default => "Default")
  end

end
