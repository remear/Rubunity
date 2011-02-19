class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user account
    
    if user.role?(:admin)
      can :manage, :all
    else
      can :read, :all
      can :create, Comment
    
      if user.role?(:moderator)
        can [:create, :update, :destory], [Bookmark, Comment]
      end
    
      if user.role?(:contributor)
        can :create, Bookmark
        can :update, [Bookmark, Comment], :user_id => user.id
      end
    end
  end
end
