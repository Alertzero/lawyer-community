class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :subject
      t.text :description
      t.boolean :display

      t.timestamps
    end
  end
end
