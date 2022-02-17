class ProductPolicy < ApplicationPolicy
  attr_reader :user, :product

  def create?
    user.admin?
  end

  def edit?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end