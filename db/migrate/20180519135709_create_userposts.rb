class CreateUserposts < ActiveRecord::Migration[5.0]
  def change
    create_table :userposts do |t|
      t.string :image
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
