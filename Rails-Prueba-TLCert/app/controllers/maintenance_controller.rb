class MaintenanceController < ApplicationController

    def new
        @maintenance = Maintenance.new
        @materials = Material.all
    end

    def create
        @maintenance = Maintenance.new(maintenance_params)
        respond_to do |format|
            if @maintenance.save
                format.html { redirect_to root_path, notice: "El mantenimiento ha sido creado exitosamente." }
            else
                format.html { render :roo, status: :unprocessable_entity }
            end
        end
    end

    private 
    def maintenance_params
        params.require(:maintenance).permit(:type, :status, :equipements_id, :city_id)
    end
end