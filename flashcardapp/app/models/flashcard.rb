class Flashcard < ActiveRecord::Base
    validates_presence_of :title, :answer
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :drillings
    has_many :drills, through: :drillings
    
    def tag_list=(input_tags)
        # Get a unique list of strings from input
        unique_stripped_tag_names = input_tags.split(',').collect{ |str| str.strip.downcase }.uniq
        # Return a list of created/found Tags
        found_or_created_tags = unique_stripped_tag_names.collect{ |name| Tag.find_or_create_by(name: name) }
        
        self.tags = found_or_created_tags
    end
    
    def tag_list
       tags.join(', ') 
    end
end
