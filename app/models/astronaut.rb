class Astronaut < ApplicationRecord
  has_many :astronaut_missions
  has_many :missions, through: :astronaut_missions

  validates_presence_of :name, :age, :job

  def average_age
    # => Find all astronauts
      # => astronauts = Astronaut.all
    # => Find all astronaut ages
    # => Sum them (use .sum)
    # => Divide by # of astronauts 
  end
end
