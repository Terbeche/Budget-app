class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, :all

    return unless user.present?

    can :read, :all
    can :manage, Group, author_id: user.id
    can :manage, Operation, author_id: user.id
  end
end
