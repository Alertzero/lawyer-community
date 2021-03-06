class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.references :category, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.boolean :solved, default: false

      t.timestamps
    end
  end
end
