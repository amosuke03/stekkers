class CreateStekkers < ActiveRecord::Migration
  def change
    create_table :stekkers do |t|
      t.string :deadline
      t.text :memo

      t.timestamps null: false
    end
  end
end
