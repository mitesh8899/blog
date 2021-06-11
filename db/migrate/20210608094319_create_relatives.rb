class CreateRelatives < ActiveRecord::Migration[6.1]
  def change
    create_table :relatives do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
