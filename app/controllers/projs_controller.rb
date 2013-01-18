class ProjsController < InheritedResources::Base

  def update
    # Get all selected rows
    @projs = Proj.all

    # Update field published to true
    @projs.each do |projs|
      
      projs.user1 = (projs.pts.to_f / projs.gp.to_f)
      projs.save
    end

    flash[:success] = "Statistics Proj Successfully updated!"

    redirect_to :back
  end
end
