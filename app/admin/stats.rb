ActiveAdmin.register Stat do
    
    if Rails.env.development?
      actions :index, :edit, :update, :create
      dllink = true
    else
      actions :index
      dllink = false
    end

    action_item do
      button_to "Update Stat" , { :controller => 'stats', :id => 1 }, :method => :put
    end

    batch_action :mypick, :priority => 1 do |selection|
      Stat.find(selection).each do |stat|
        if stat.user3 == 0
            stat.user3 = 1
        else
            stat.user3 = 0
        end
        stat.save
      end
      flash[:success] = "update my picked!"
      redirect_to :back
    end

    batch_action :otherpick, :priority => 2 do |selection|
      Stat.find(selection).each do |stat|
        if stat.user3 == 0
            stat.user3 = 2
        else
            stat.user3 = 0
        end
        stat.save
      end
      flash[:success] = "update other picked!"
      redirect_to :back
    end

    batch_action :resetpicked do |selection|
      Stat.find(selection).each do |stat|
        if stat.user3 == 1 || stat.user3 == 2
          stat.user3 = 0
          stat.save
        end
      end
      flash[:success] = "all picked reset"
      redirect_to :back
    end

    sidebar "Ftsy Scoring" do
        h2 "Player"
        h5 "Goal: 3; Assist: 2"
        h5 "ppp: 1; +/-: 1"
        h5 "pim: 0.5; shots: 0.4"
        h2 "Goalie"
        h5 "Win: 4; Sv: 0.2"
        h5 "So: 2; Ga: -1"
        h5 ""
    end



    #scope :all, :default => true
    #.where clause are a bit different from sqlite3, to postgres
    # table name must be lowercase and == is now only =
    scope :players, :default => true do |stats|
        stats.where('position = ? or position = ? or position = ? or position = ?', 'C', 'LW', 'RW', 'D' )
    end
    scope :goalie do |stats|
        stats.where('position = ?', 'G')
    end
    scope :centers do |stats|
        stats.where('position = ?', 'C')
    end
    scope :leftwing do |stats|
        stats.where('position = ?', 'LW')
    end
    scope :rightwing do |stats|
        stats.where('position = ?', 'RW')
    end
    scope :defense do |stats|
        stats.where('position = ?', 'D')
    end

    config.per_page = 300
    config.sort_order = "user1_desc"
    #config.filters = false
    filter :player, :as => :string

    index :download_links => dllink do

        selectable_column
        column("player")
        column("position")
        column("picked", :sortable => :user3) do |stats|
            if stats.user3 == 0
                str = "available"
                code = :ok
            elsif stats.user3 == 1
                str = "my pick"
                code = :warning
            else
                str = "picked"
                code = :error
            end
            status_tag str, code
        end
        column("gp")

        #player only columns
    	column("g") unless params['scope'] == 'goalie' 
    	column("a") unless params['scope'] == 'goalie'
    	column("p") unless params['scope'] == 'goalie'
    	column("ppp") unless params['scope'] == 'goalie'
    	column("pim") unless params['scope'] == 'goalie'
        column("+/-", :sortable => :plus_minus) { |stats| stats.plus_minus }  unless params['scope'] == 'goalie'
    	column("shots") unless params['scope'] == 'goalie'

        #goalie only columns
        column("w") if params['scope'] == 'goalie'
        column("ga") if params['scope'] == 'goalie'
        column("sv") if params['scope'] == 'goalie'
        column("so") if params['scope'] == 'goalie'
        
    	column("ftsy", :sortable => :user1) { |stats| stats.user1 }
        column("ftsy / Gp", :sortable => :user2) { |stats| number_with_precision(stats.user2, :precision => 2) }
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


