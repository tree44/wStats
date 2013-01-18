ActiveAdmin.register Proj do
  actions :index  

      action_item do
      button_to "Update Proj" , { :controller => 'projs', :id => 1 }, :method => :put
    end

  batch_action :mypick, :priority => 1 do |selection|
      Proj.find(selection).each do |proj|
        proj.user3 = 1
        proj.save
      end
      flash[:success] = "update my picked!"
      redirect_to :back
    end

    batch_action :otherpick, :priority => 2 do |selection|
      Proj.find(selection).each do |proj|
        proj.user3 = 2
        proj.save
      end
      flash[:success] = "update other picked!"
      redirect_to :back
    end

    batch_action :resetpicked do |selection|
      Proj.find(selection).each do |proj|
          proj.user3 = 0
          proj.save
      end
      flash[:success] = "all picked reset"
      redirect_to :back
    end

    config.per_page = 300
    config.sort_order = "pts_desc"
    #config.filters = false
    filter :player, :as => :string

    index do

      selectable_column

      column("picked", :sortable => :user3) do |proj|
          if proj.user3 == 0
              str = "available"
              code = :ok
          elsif proj.user3 == 1
              str = "my pick"
              code = :warning
          else
              str = "picked"
              code = :error
          end
          status_tag str, code
      end
      column("player")
      column("team")
      column("pos")
      column("gp")
      column("g")
      column("a") 
      column("pts")
      column("pts/gp", :sortable => :user1) { |projs| number_with_precision(projs.user1, :precision => 2) }
      default_actions
    end
end
