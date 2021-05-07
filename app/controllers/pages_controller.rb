class PagesController < ApplicationController
  def dashboard
  end

  def diet
    @diet = current_user.diet
  end
end
