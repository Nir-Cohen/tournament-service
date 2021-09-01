class User < ApplicationRecord
    has_many :games
    has_many :tournamnets, through: :games

end
