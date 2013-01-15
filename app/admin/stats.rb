ActiveAdmin.register Stat do
    actions :index
    action_item do
        button_to "Update Stat" , { :controller => 'stats', :id => 1 }, :method => :put
    end


    #scope :all, :default => true
    #.where clause are a bit different from sqlite3, to postgres
    # table name must be lowercase and == is now only =

    scope :players, :default => true do |stats|

        if ENV['RAILS_ENV'] == "development"
          stats.where('Position == ? or Position == ? or Position == ? or Position == ?', 'C', 'LW', 'RW', 'D' )
        else
          stats.where('position = ? or position = ? or position = ? or position = ?', 'C', 'LW', 'RW', 'D' )
        end
    end

    scope :goalie do |stats|
        if ENV['RAILS_ENV'] == "development"
          stats.where('Position == ?', 'G')
        else
          stats.where('position = ?', 'G')
        end
    end

    scope :forwards, :default => true do |stats|
        if ENV['RAILS_ENV'] == "development"
          stats.where('Position == ? or Position == ? or Position == ? or Position == ?', 'C', 'LW', 'RW', 'D' )
        else
          stats.where('position = ? or position = ? or position = ? or position = ?', 'C', 'LW', 'RW', 'D' )
        end
    end
    scope :centers do |stats|
        if ENV['RAILS_ENV'] == "development"
          stats.where('Position == ?', 'C')
        else
          stats.where('position = ?', 'C')
    	end
    end
    scope :leftwing do |stats|
        if ENV['RAILS_ENV'] == "development"
          stats.where('Position == ?', 'LW')
        else
          stats.where('position = ?', 'LW')
    	end
    end
    scope :rightwing do |stats|
        if ENV['RAILS_ENV'] == "development"
          stats.where('Position == ?', 'RW')
        else
          stats.where('position = ?', 'RW')
    	end
    end
    scope :defense do |stats|
        if ENV['RAILS_ENV'] == "development"
          stats.where('Position == ?', 'D')
        else
          stats.where('position = ?', 'D')
    	end
    end

    config.per_page = 25
    config.filters = false

    index do
    	column("Player")
    	column("Position")

        #player columns
    	column("g") unless params['scope'] == 'goalie' 
    	column("a") unless params['scope'] == 'goalie'
    	column("p") unless params['scope'] == 'goalie'
    	column("ppp") unless params['scope'] == 'goalie'
    	column("pim") unless params['scope'] == 'goalie'
        column("+/-", :sortable => :plus_minus) { |stats| stats.plus_minus }  unless params['scope'] == 'goalie'
    	column("shots") unless params['scope'] == 'goalie'

        #goalie columns
        column("w") if params['scope'] == 'goalie'
        column("ga") if params['scope'] == 'goalie'
        column("sv") if params['scope'] == 'goalie'
        column("so") if params['scope'] == 'goalie'
        
    	column("ftsy", :sortable => :user1) { |stats| stats.user1 }
        default_actions
    #index do
    #  column :Player
    #  column :Position
    #  column :a
    #  column :g
    #  column :p
    #  column :ppp
    #  column :pim
    #  column :plus_minus
    #  column :shots
    #  column "ftsyPts", :sortable => true do |stats|
	#	(stats.g * 3) + (stats.a * 2) + (stats.plus_minus * 1) + (stats.pim * 0.5) + (stats.ppp * 1) + (stats.shots * 0.4)
    #  end
    #  default_actions
    end

    
end


