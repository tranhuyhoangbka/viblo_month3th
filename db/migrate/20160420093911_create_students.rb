class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :phone_number
      t.string :email
      t.string :class_room_id

      t.timestamps null: false
    end
  end
end
