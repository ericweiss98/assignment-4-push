class CreateBooks < ActiveRecord::Migration[5.1]
  def up
    create_table :books do |t|
		t.column "Title"
		t.string "Genre"
		t.string "Author"
		t.date "PublishedDate"
		t.int "Price"

      t.timestamps
    end
  end

  def down
	drop_table :books
  end
end
