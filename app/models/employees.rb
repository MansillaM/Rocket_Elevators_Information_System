class Employees < ApplicationRecord
    has_many :buildings
    belongs_to :users
end