class PagesController < ApplicationController
  
  def home
    @title = "Home"
  end  

  def musicians
    @title = "Musicians"
  end

  def blog
    @title = "Blog"
  end  

  def info
    @title = "Info & Contact"
  end  

  def jeff
    @title = "Jeff D'Antona"
  end

end
