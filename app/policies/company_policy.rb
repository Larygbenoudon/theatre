class CompanyPolicy < ApplicationPolicy

  def create?
    user.manager? && user.company.empty?
  end
end
