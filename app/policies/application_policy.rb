class ApplicationPolicy
  attr_reader :user, :record, :company , :context

  def initialize(context, record)
    @user = context.user
    @record = record
    @company = company
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope, :company , :context

    def initialize(context, scope)
      @user = context.user
      @scope = scope
      @company = company
    end

    def resolve
      scope
    end
  end
end
