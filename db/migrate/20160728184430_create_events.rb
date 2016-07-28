class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :information
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
