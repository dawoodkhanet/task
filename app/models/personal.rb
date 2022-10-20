class Personal < ApplicationRecord
    validates :first_name, :last_name, :contact, :presence => true
    validates :first_name, length: {maximum: 25}
    validates :last_name, length: {maximum: 20}
    

end
