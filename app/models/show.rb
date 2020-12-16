class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  # get full names of actors from shows
    def actors_list
        self.actors.collect { |a| a.full_name}    
    end

end