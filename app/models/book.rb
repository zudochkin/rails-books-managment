class Book < ActiveRecord::Base
  attr_accessible :author, :category_id, :description, :name, :status_id, :user_id

  validates_presence_of :name, :author
  validates_associated :category
  validates_associated :user

  belongs_to :category
  belongs_to :status
  belongs_to :user
end
