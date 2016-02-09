class Movie < ActiveRecord::Base
  belongs_to :director
  has_and_belongs_to_many :genres
  has_many :roles
  has_many :actors, through: :roles
end
