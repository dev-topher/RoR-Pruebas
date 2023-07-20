class PostService < ApplicationRecord
    belongs_to :maintenance
    has_one_attached :evidence
end
