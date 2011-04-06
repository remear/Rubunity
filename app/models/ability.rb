class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user account
    
    if user.role?(:admin)
      can :manage, :all
    else
      can :read, :all
      #can :create, Comment
      can :vote, Bookmark
    
      if user.role?(:moderator)
        #can :manage, :all
        can :create, @bookmark
        can :update, @bookmark
        can :destroy, @bookmark
        can :create, @comment
        can :update, @comment
        can :destroy, @comment
      end
    
      if user.role?(:contributor)
        can :create, @bookmark
        can :update, @bookmark, :user_id => user.id
        can :create, @comment
        can :update, @comment, :user_id => user.id
      end
    end
  end
end
