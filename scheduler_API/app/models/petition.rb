class Petition < ActiveRecord::Base
  has_one :user ,:building
  has_many :intervals
end
