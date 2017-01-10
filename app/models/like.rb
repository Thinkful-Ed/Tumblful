class Like < ActiveRecord::Base
  belongs_to :user
  scope :recent, lambda { order('created_at DESC').limit(5) }
  
  # Sets up the polymorphic relationship
  belongs_to :likeable, polymorphic: true
end
