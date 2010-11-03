class Event < ActiveRecord::Base
  def name
    "#{performer} #{date}"
  end
end
