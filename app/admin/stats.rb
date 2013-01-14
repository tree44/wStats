ActiveAdmin.register Stat do
    actions :index
    action_item do
        button_to "Update Stat" , { :controller => 'stats', :id => 1 }, :method => :put
    end


    #scope :all, :default => true

    scope :players, :default => true do |stats|
        stats.where('Position == ? or Position == ? or Position == ? or Position == ?', 'C', 'LW', 'RW', 'D' )
    end
    scope :goalie do |stats|
        stats.where('Position == ?', 'G')
    end

    scope :forwards, :default => true do |stats|
        stats.where('Position == ? or Position == ? or Position == ?', 'C', 'LW', 'RW')
    end
    scope :centers do |stats|
    	stats.where('Position == ?', 'C')
    end
    scope :leftwing do |stats|
    	stats.where('Position == ?', 'LW')
    end
    scope :rightwing do |stats|
    	stats.where('Position == ?', 'RW')
    end
    scope :defense do |stats|
    	stats.where('Position == ?', 'D')
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


