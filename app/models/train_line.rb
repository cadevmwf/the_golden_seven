class TrainLine < ActiveRecord::Base
  attr_accessible :name, :frequency
  validates_presence_of :name
end
