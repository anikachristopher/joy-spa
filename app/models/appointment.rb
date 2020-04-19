class Appointment < ApplicationRecord

    belongs_to :client
    has_many :services
    has_many :clients, through: :services

    validates :service, :date, :time, presence: true
end
