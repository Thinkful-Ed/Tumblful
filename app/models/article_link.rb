class ArticleLink < ActiveRecord::Base
    scope :recent, lambda { order('created_at DESC').limit(10) }
    
    validates_presence_of :url
     #Ensures that user has to enter URL

    has_many :likes, as: :likeable
      # Set up this side of the polymorphic association
end
