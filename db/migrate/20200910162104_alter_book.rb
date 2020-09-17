class AlterBook < ActiveRecord::Migration[5.1]
  def up
	change_column("Books", "Title", :string, :default => "Default")
	change_column("Books", "Genre", :string, :default => "Default")
	change_column("Books", "Author", :string, :default => "Default")
  end

end
