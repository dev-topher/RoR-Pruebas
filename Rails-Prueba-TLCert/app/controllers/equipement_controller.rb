class EquipementController < ApplicationController

    def new
        @equipement = Equipement.new
    end

    def create
        @equipement = Equipement.new(equipement_params)
        respond_to do |format|
            if @equipement.save
                format.html { redirect_to root_path, notice: "El equipamiento ha sido creado exitosamente." }
            else
                format.html { render :roo, status: :unprocessable_entity }
            end
        end
    end

    private 

    def equipement_params
        params.require(:equipement).permit(:type, :name, :description, :image)
    end

end