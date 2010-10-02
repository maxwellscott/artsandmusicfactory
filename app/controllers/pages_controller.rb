class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def info
    @title = "Info"
  end

  def blog
    @title = "Blog"
  end

end
