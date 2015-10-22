class CreateDrillings < ActiveRecord::Migration
  def change
    create_table :drillings do |t|
      t.belongs_to :drill, index: true, foreign_key: true
      t.belongs_to :flashcard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
