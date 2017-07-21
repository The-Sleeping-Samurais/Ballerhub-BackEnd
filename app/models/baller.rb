class Baller < ActiveRecord::Base
  has_many :users, through: :favorites
  has_many :favorites
end
