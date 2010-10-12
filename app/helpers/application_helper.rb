module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "Arts & Music Factory - Greenfield, MA"
    if @title.nil?
      base_title
    else
      "#{@title} | #{base_title}"
    end
  end

  def logo
    logo = image_tag("amf_logo_small.png", :alt => "Home")
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
    artsblock_big = image_tag("artsblock-icon-100.png", :alt => "The Arts Block", :mouseover => "artsblock-icon-100-mouseover.png")
  end

  def pushkin
    pushkin = image_tag("pushkin-icon-50.png", :alt => "The Pushkin", :mouseover => "pushkin-icon-50-mouseover.png")
  end

  def pushkin_big
    pushkin_big = image_tag("pushkin-icon-100.png", :alt => "The Pushkin", :mouseover => "pushkin-icon-100-mouseover.png")
  end

  def sandy_img
    sandy_img = image_tag("sandy.jpg", :alt => "Sandy Bailey", :mouseover => "sandy-mouseover.jpg")
  end

  def sandy_nm
    sandy_nm = "Sandy Bailey"
  end

  def sandy_desc
    sandy_desc = "singer & songwriter"
  end

  def musician2_img
    musician2_img = image_tag("alecia.jpg", :alt => "Alecia Chakour", :mouseover => "alecia-mouseover.jpg")
  end

  def musician2_nm
    musician2_nm = "Alecia Chakour"
  end 
  
  def musician2_desc
    musician2_desc = "soul/r&b vocalist"
  end

  def musician3_img
    musician3_img = image_tag("jeff.jpg", :alt => "Jeff D'Antona", :mouseover => "jeff-mouseover.jpg")
  end

  def musician3_nm
    musician3_nm = "Jeff D'Antona"
  end 
  
  def musician3_desc
    musician3_desc = "pianist & composer"
  end  

  def myspace
    myspace = image_tag("myspace_button.png", :size => "75x75", :alt => "find this musician at myspace.com", :mouseover => "myspace_button-mouseover.png")
  end

end
