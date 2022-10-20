class Personal < ApplicationRecord
    validates :first_name, length: {maximum: 25}, :presence => true
    validates :last_name, length: {maximum: 20}, :presence => true
end
