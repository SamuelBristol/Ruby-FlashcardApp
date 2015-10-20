class Drilling < ActiveRecord::Base
  belongs_to :drill
  belongs_to :flashcard
end
