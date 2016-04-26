class ImageLink < ActiveRecord::Base
    scope :recent, lambda { order('created_at DESC').limit(5) }
        #Creates a scope to let users see the 5 most recently created ImageLink instances
    validates_presence_of :url
        #Ensures that user has to enter URL
    validates_presence_of :title
        #Ensures that user has to enter title
    belongs_to :user
        #Says that this class belongs to user
end
