class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :first_name
      t.string :last_name
      t.string :address

      t.timestamps
    end
  end
end
