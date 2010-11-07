module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "The Arts & Music Factory | Greenfield, MA"
    if @title.nil?
      base_title
    else
      "#{@title} | #{base_title}"
    end
  end

  def logo
    logo = image_tag("amf_logo_small2.png", :alt => "Home")
  end

  def ab_logo
    ab_logo = image_tag("ab_logo.png", :alt => "The Arts Block")
  end

  def blog
    blog = image_tag("blog-icon-black-50.png", :alt => "Blog", :mouseover => "blog-icon-black-50-mouseover.png")
  end

  def blog_big
    blog_big = image_tag("blog-icon-black-100.png", :alt => "Blog", :mouseover => "blog-icon-black-100-mouseover.png")
  end

  def facebook
    facebook = image_tag("facebook-icon-50.png", :alt => "Facebook", :mouseover => "facebook-icon-50-mouseover.png")
  end

  def artsblock
    artsblock = image_tag("artsblock-icon-50.png", :alt => "The Arts Block", :mouseover => "artsblock-icon-50-mouseover.png")
  end

  def artsblock_big
    artsblock_big = image_tag("artsblock-icon-100.png", :size => "100x100", :alt => "The Arts Block", :mouseover => "artsblock-icon-100-mouseover.png")
  end

  def pushkin
    pushkin = image_tag("pushkin-icon-50.png", :alt => "The Pushkin", :mouseover => "pushkin-icon-50-mouseover.png")
  end

  def pushkin_big
    pushkin_big = image_tag("pushkin-icon-100.png", :size => "100x100", :alt => "The Pushkin", :mouseover => "pushkin-icon-100-mouseover.png")
  end

  def newsletter
    newsletter = image_tag("newsletter.png", :size => "100x100", :alt => "Sign up for our newsletter", :mouseover => "newsletter-mouseover.png")
  end

  def sandy_img
    sandy_img = image_tag("sandy.jpg", :alt => "Sandy Bailey", :mouseover => "sandy-mouseover.jpg")
  end

  def sandy_desc
    sandy_desc = "singer & songwriter"
  end

  def alecia_img
    alecia_img = image_tag("alecia.jpg", :alt => "Alecia Chakour", :mouseover => "alecia-mouseover.jpg")
  end

  def alecia_desc
    alecia_desc = "soul/r&b vocalist"
  end

  def jeff_img
    jeff_img = image_tag("jeff.jpg", :alt => "Jeff D'Antona", :mouseover => "jeff-mouseover.jpg")
  end

  def jeff_desc
    jeff_desc = "pianist & composer"
  end  

  def geoff_img
    geoff_img = image_tag("geoff.jpg", :alt => "Geoff Vidal", :mouseover => "geoff-mouseover.jpg")
  end

  def geoff_desc
    geoff_desc = "saxophonist & composer"
  end

  def myspace
    myspace = image_tag("myspace_button.png", :alt => "find this musician at myspace.com", :mouseover => "myspace_button-mouseover.png", :size => "100x100")
  end

end
