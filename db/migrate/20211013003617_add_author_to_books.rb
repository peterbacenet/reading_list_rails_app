class AddAuthorToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :autho, :author
  end
end
