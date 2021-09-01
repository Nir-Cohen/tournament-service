class Game < ApplicationRecord
    belongs_to :tournamnet
    belongs_to :user
end
