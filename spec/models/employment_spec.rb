require 'rails_helper'

RSpec.describe Employment, type: :model do
  context 'validation tests' do 
    it 'ensure Employer name presence' do 
      employment = Employment.new(start_date: '2021-05-05', end_date: '2021-06-06').save
      expect(employment).to eq(false)
    end
    it 'ensure start date presence' do 
      employment = Employment.new(employer: 'employer', end_date: '2021-06-06').save
      expect(employment).to eq(false)
    end 
    it 'ensure End date presence' do 
      employment = Employment.new(employer: 'employer', start_date: '2021-06-06').save
      expect(employment).to eq(false)
    end
    it 'Should have Successfully' do 
      employment = Employment.new(employer: "employer", start_date: '2021-05-05', end_date: '2021-06-06').save
      expect(employment).to eq(true)
    end
  end
end
