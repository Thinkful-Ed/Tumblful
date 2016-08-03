class TextPost < ActiveRecord::Base
    scope :recent, lambda { order('created_at DESC').limit(5) }

    validates_presence_of :content
        #Ensures that user has to enter URL
    validates_presence_of :title
        #Ensures that user has to enter title
    belongs_to :user
        #Says that this class belongs to user
    has_many :likes, as: :likeable
      # Set up this side of the polymorphic association
end
