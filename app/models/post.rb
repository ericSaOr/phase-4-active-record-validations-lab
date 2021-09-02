class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :is_title_true_facts

    def is_title_true_facts
       if title == "True Facts"
        errors.add( :title, "Length of title must be greater than 12 characters" )
        
       end 
    end
end
