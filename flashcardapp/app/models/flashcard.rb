class Flashcard < ActiveRecord::Base
    validates_presence_of :title, :answer
end
