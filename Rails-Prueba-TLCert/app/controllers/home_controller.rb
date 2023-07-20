require 'csv'

class HomeController < ApplicationController

    # metodos base

    def index
        if current_user.present?
            
        end
    end

    def contact
    end

    def tyc
    end

    # carga de csv's

    def csv_city
        file = params[:city][:file] # Asegúrate de que el atributo `name` coincida con el formulario
        city_save(file)
        redirect_to root_path, notice: "Ciudades cargadas correctamente"
      end
      
      def csv_materials
        file = params[:material][:file] # Asegúrate de que el atributo `name` coincida con el formulario
        
        material_save(file)
        redirect_to root_path, notice: "Materiales cargados correctamente"
      end

    def contact_save
        @contact = Contact.new(contact_params)

        if @contact.save
            redirect_to root_path, notice: "Gracias por tu mensaje de contacto"
        else
            return redirect_to contacto_path
        end

    end

    private

    def city_save(file)
        csv_city = File.read(file.path, encoding: "ISO-8859-1")
        csv = CSV.parse(csv_city, headers: true, col_sep: ',')
        csv.each do |row|
            data_hash = {
                name: row["name"]
            }
            City.create(data_hash)
        end
    end

    def material_save(file)
        csv_material = File.read(file.path, encoding: "ISO-8859-1")
        csv = CSV.parse(csv_material, headers: true, col_sep: ',')
        csv.each do |row|
            data_hash = {
                name: row["name"]
            }
            Material.create(data_hash)
        end
    end

    def contact_params
        params.require(:contact).permit(:name, :email, :number, :consulta)
    end

end
