class AddIsbnColumn < ActiveRecord::Migration
  def self.up
    add_column :books, 'isbn', :string
  end

  def self.down
    remove_column :books, 'isbn'
  end
end
