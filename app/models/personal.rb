class Personal < ApplicationRecord
    validates :first_name, :last_name, :contact, :presence => true
    validates :first_name, length: {maximum: 25}
    validates :last_name, length: {maximum: 20}
    validates_format_of :contact,
  :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
  :message => "- Phone numbers must be in xxx-xxx-xxxx format."

end
