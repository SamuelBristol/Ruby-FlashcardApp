require 'test_helper'

class FlashcardTest < ActiveSupport::TestCase
  test "should create a valid record" do
    flashcard = Flashcard.new
    flashcard.title = "flashcard"
    assert flashcard.save
  end
  
  test "title should be at least 1 character" do
    flashcard = Flashcard.new
    flashcard.title = ""
    assert !flashcard.save
    flashcard.title = "a"
    assert flashcard.save
  end
end
