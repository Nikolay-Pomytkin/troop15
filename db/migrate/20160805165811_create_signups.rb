class CreateSignups < ActiveRecord::Migration[5.0]
  def change
    create_table :signups do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
