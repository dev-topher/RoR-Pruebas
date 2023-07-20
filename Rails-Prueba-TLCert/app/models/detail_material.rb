class DetailMaterial < ApplicationRecord
    belongs_to :material
    belongs_to :maintenance
end
