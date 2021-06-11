class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :enroll_no
      t.string :standard
      t.string :email

      t.timestamps
    end
  end
end
