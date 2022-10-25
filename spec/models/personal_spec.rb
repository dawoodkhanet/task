require 'rails_helper'

RSpec.describe Personal, type: :model do
  context 'validation tests' do 
    it 'ensure first_name presence' do 
      personal = Personal.new(last_name: 'last',email: 'daw@gmail.com', contact:123-123-1234).save
      expect(personal).to eq(false)
    end
    it 'ensure last_name presence ' do
      personal = Personal.new(first_name: 'first',email: 'daw@gmail.com', contact:123-123-1234).save
      expect(personal).to eq(false) 
    end
    it 'ensure email presence' do
      personal = Personal.new(first_name: 'first',last_name: 'last', contact:123-123-1234).save
      expect(personal).to eq(false) 
    end
    it 'ensure contact presence' do 
      personal = Personal.new(first_name: 'first',last_name: 'last',email:'daw@gmail.com').save
      expect(personal).to eq(false)
    end
    it 'should have successfully' do 
      personal = Personal.new(first_name: 'first',last_name: 'last',email: 'daw@gmail.com', contact:123-123-1234).save
      expect(personal).to eq(true)
    end
  end
  

end
