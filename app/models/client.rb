class Client < ApplicationRecord
    has_secure_password

    validates :first_name, :last_name, :email, presence :true
    validates :first_name, :last_name, :email, uniqueness :true
end
