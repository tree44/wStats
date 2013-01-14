class StatsController < InheritedResources::Base

  # GET /stats/new
  # GET /stats/new.json
  def new
    #@stat = Stat.new

    respond_to do |format|
      format.html # new.html.erb
    #  format.json { render json: @stat }
    end
  end

	def update
		puts "this is a test contrller"

		# Get all selected rows
        @stats = Stat.all

        # Update field published to true
        @stats.each do |stats|
          #stats.update_attribute(:user1, (util.g * 3) + (util.a * 2))
          #column("FtsyPts") { |stats| (stats.g * 3) + (stats.a * 2) + (stats.plus_minus * 1) + (stats.pim * 0.5) + (stats.ppp * 1) + (stats.shots * 0.4)}
  		  if stats.Position == 'G'
			stats.user1 = (stats.w * 4) + (stats.ga * -1) + (stats.sv * 0.2) + (stats.so * 2)
  		  else
			stats.user1 = (stats.g * 3) + (stats.a * 2) + (stats.plus_minus * 1) + (stats.pim * 0.5) + (stats.ppp * 1) + (stats.shots * 0.4)
  		  end
          stats.save
        end

        flash[:success] = "Statistics Successfully updated!"

        redirect_to :back
	end
end
