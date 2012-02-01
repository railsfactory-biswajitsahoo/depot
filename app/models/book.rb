class Book < ActiveRecord::Base
  belongs_to :subject
  validates_presence_of :title
 
end

