class CreateFlashcards < ActiveRecord::Migration
  def change
    create_table :flashcards do |t|
      t.string :title
      t.string :answer

      t.timestamps null: false
    end
  end
end
