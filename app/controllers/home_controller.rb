class HomeController < ApplicationController
  def index
    return redirect_to posts_path if current_user
  end

  def terms
  end

  def privacy
  end
end
