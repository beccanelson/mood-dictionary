class CreateTempos < ActiveRecord::Migration
  def change
    create_table :tempos do |t|
      t.integer :bpm

      t.timestamps null: false
    end
  end
end
