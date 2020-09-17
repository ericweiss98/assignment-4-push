class CreateBooks < ActiveRecord::Migration[5.1]
  def up
    create_table :books do |t|
		t.column "Title", :string, :null => false
		t.string "Genre", :null => false
		t.string "Author", :null => false

      t.timestamps
    end
  end

  def down
	drop_table :books
  end
end
