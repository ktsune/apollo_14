require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe "When I visit '/astronauts'" do
    before :each do
      @mert = Astronaut.create!(name: 'Mert', age: 43, job: 'Commander')
    end

    it "I see a list of astronauts with the following info: Name,Age,Job" do
      visit '/astronauts'
      
      expect(page).to have_content(@mert.name)
      expect(page).to have_content(@mert.age)
      expect(page).to have_content(@mert.job)
    end
  end
end
