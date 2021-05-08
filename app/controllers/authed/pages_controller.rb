module Authed
  class PagesController < AuthedController
    def dashboard
    end

    def diet
      @diet = current_user.diet
    end
  end
end
