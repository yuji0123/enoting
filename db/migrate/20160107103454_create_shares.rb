class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :note_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
