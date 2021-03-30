class CreateAdvices < ActiveRecord::Migration[6.1]
  def change
    create_table :advices do |t|
      t.text :message
      t.references :question, null: false, foreign_key: true
      t.references :lawyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
