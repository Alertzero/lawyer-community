class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :message
      t.references :question, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.references :advice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
