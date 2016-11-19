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
    record.users.last == user
  end
end
