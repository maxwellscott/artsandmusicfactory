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
    logo = image_tag("amf_logo.png", :alt => "Home", :class => "round")
  end

  def blog
    blog = image_tag("blog-icon-black-50.png", :alt => "Blog", :mouseover => "blog-icon-black-50-mouseover.png")
  end

  def facebook
    facebook = image_tag("facebook-icon-50.png", :alt => "Facebook", :mouseover => "facebook-icon-50-mouseover.png")
  end
end
