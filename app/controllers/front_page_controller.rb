class FrontPageController < ApplicationController
  def home
  end

  def about
  	redirect_to front_page_home_path + "#about"
  end

  def contact
  	redirect_to front_page_home_path  + "#contact"
  end
end
