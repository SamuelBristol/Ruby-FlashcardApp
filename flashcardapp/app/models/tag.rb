class Tag < ActiveRecord::Base
    has_many :taggings
    has_many :flashcards, through: :taggings
    
    def to_s
        name
    end
end
