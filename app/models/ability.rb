# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.instance_of?(Admin)
      can :access, :rails_admin
      can :manage, :all
    end
  end
end
