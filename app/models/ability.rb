class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new    

    Rails.logger.info "ability user: email - #{user.email} super - #{user.superadmin}"

    #why is this 0/1 instead of false/true? sqlite3 diff from postgres, should convert boolean to integer?
    if Rails.env.development?
        if user.superadmin == 1
            can :manage, :all
        else
            can :manage, Stat
            cannot [:edit], Stat
        end
    else
        if user.superadmin == true
            can :manage, :all
        else
            can :manage, Stat
            cannot [:edit], Stat
        end
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
