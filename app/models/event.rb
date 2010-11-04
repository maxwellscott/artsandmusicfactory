class Event < ActiveRecord::Base

  def name
    "#{performer} #{date}"
  end

  has_many :cart_items
  has_many :carts, :through => :cart_items

end
