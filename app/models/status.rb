class Status < ActiveRecord::Base
  attr_accessible :name

  has_one :book
end
