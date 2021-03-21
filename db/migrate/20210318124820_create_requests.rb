class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :title
      t.text :body
      t.references :category, null: false, foreign_key: true
      t.references :clients, null: false, foreign_key: true

      t.timestamps
    end
  end
end
