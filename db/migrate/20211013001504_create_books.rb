class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :autho
      t.text :description
      t.string :cover_image_url

      t.timestamps
    end
  end
end
