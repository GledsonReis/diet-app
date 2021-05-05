class PagesController < ApplicationController
  def dashboard
  end

  def diet
    @dieta = current_user.diet
  end
end
