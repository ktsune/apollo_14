require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'Astronaut average age' do
    it 'can calculate the average age of all astronauts' do
      @mert = Astronaut.create!(name: 'Mert', age: 20, job: 'Commander')
      @poe = Astronaut.create!(name: 'Poe', age: 20, job: 'Space Cadet')

      expect(page).to have_content(20)
    end
  end
end
