class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def update?
    user_is_owner_or_admin?
  end

  def delete?
    user_is_owner_or_admin?
  end

  def create_plant?
    user_is_owner_or_admin?
  end

  def user_is_owner_or_admin?
    record == user

  end
end
