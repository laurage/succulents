class PlantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    true
  end

  def update?
    user_is_owner_or_admin?
  end

  def delete?
    user_is_owner_or_admin?
  end

  def user_is_owner_or_admin?
    # Checks that the plant did belong to the user at some point. If so, checks that the current_owner or the plant is the current_user
    record.ownerships.where(user_id:user).first.current_owner if record.ownerships.where(user_id:user).exists?
  end
end
