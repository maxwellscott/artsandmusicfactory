module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "Arts & Music Factory"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    logo = image_tag("logo.png", :alt => "Home", :class => "round")
  end 
end
