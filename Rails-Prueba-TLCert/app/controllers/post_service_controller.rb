class PostServiceController < ApplicationController

    def new
        @maintenances = Maintenance.all
        @postservice = PostService.new
    end

    def create
        @postservice = PostService.new(post_service_params)
        respond_to do |format|
            if @postservice.save
                format.html { redirect_to root_path, notice: "El post-servicio ha sido creado exitosamente." }
            else
                format.html { render :roo, status: :unprocessable_entity }
            end
        end
    end

    private 
    def post_service_params
        params.require(:post_service).permit(:evidence, :maintenance_id)
    end
end