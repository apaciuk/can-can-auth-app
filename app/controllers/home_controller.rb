class HomeController < ApplicationController
  def index 
    if user_signed_in? 
      redirect_to questions_path
    end
  end

  def terms
  end

  def privacy
  end
end
