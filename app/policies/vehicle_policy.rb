class VehiclePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def edit?
    true
  end

  def create?
    true
  end

  def update?
    true
    # record.user == user
  end

  def destroy?
    true
  end
end
