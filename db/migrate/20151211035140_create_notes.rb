class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.text :contents

      t.timestamps null: false
    end

	# この部分は追加部分 
    # add_index :notes, :id,      unique: true
    # add_index :notes, :user_id, unique: true
  end
end
