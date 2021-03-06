require 'test_helper'

class FlashcardTest < ActiveSupport::TestCase
  test "should create a valid record" do
    flashcard = Flashcard.new
    flashcard.title = "flashcard"
    flashcard.answer = "a tool used to study"
    assert flashcard.save
  end
  
  test "title should be at least 1 character" do
    flashcard = Flashcard.new
    flashcard.title = ""
    flashcard.answer = "empty title"
    assert !flashcard.save
    flashcard.title = "a"
    assert flashcard.save
  end
  
  test "answer should be at least 1 character" do
    flashcard = Flashcard.new
    flashcard.title = "a"
    flashcard.answer = ""
    assert !flashcard.save
    flashcard.answer = "the first letter of the english alphabet"
    assert flashcard.save
  end
end
