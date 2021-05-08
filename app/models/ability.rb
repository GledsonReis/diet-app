# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can %i[edit update], User, id: user.id
    can %i[new create], Diet
    can %i[edit update], Diet, user_id: user.id
  end
end
