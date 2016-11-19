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
    #record.ownerships.where(user_id:5).first.current_owner
    record.user == user
  end
end
