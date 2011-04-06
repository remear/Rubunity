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
        can :create, Bookmark
        can :update, Bookmark do |bookmark|
          bookmark.try(:user) == user
        end
        can :create, @comment
        can :update, @comment, :user_id => user.id
      end
    end
  end
end
