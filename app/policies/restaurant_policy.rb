class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    record.user == user
  end

  def update?
    create?
  end

  def destroy?
    create?
  end
end

