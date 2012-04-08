class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :books

  def destroy
    super if books.count == 0
  end
end
