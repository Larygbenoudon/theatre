class CompanyPolicy < ApplicationPolicy

  def create?
     user.admin? and user.manager?
  end
end
