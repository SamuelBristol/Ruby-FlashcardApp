require 'test_helper'

class FlashcardTest < ActiveSupport::TestCase
  test "should create a valid record" do
    flashcard = Flashcard.new
    assert flashcard.save
  end
end
