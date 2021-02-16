class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    
    def total_concerts
        self.concerts.count
    end
    

    enum team: [:hombres, :mujeres, :banda]
end
