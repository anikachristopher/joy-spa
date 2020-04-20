class Client < ApplicationRecord
    has_secure_password

    has_many :appointments
    has_many :services, through: :appointments
    
    # validates :first_name, :last_name, :email, presence :true
    # validates :email, uniqueness :true

    validates :first_name, :presence => {:message => 'First Name cannot be blank'}
    validates :last_name, :presence => {:message => 'Last Name cannot be blank'}
    validates :email, :presence => {:message => 'Email cannot be blank'}
end
