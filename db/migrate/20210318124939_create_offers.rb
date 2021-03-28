class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :body
      t.references :request, null: false, foreign_key: true
      t.references :lawyer, null: false, foreign_key: true
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
