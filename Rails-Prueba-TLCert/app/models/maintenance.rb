class Maintenance < ApplicationRecord

    enum :type, [:preventivo, :correctivo]
    enum :status, [:aceptado, :en_curso, :finalizado]

    has_many :detail_material

end
