class Status < ActiveRecord::Base
  attr_accessible :name

  has_one :book

  def destroy
    super if book.nil?
  end
end
