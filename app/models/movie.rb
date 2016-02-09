class Movie < ActiveRecord::Base
  belongs_to :director
  has_and_belongs_to_many :genres
  has_many :roles
  has_many :actors, through: :roles

  accepts_nested_attributes_for :director
  accepts_nested_attributes_for :roles, allow_destroy: true, reject_if: lambda { |role| role[:name].blank? }
end
