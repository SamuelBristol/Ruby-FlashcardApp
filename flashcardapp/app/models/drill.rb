class Drill < ActiveRecord::Base
    has_many :drillings
    has_many :flashcards, through: :drillings
end
