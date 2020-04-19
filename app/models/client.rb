class Client < ApplicationRecord
    has_secure_password

    has_many :appointments
    has_many :services, through: :appointments
    
    validates :first_name, :last_name, :email, presence :true
    validates :email, uniqueness :true
end
