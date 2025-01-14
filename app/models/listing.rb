class Listing < ApplicationRecord
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations
    belongs_to :neighborhood
    belongs_to :host, :class_name => "User"
end
