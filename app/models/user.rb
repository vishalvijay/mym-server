class User < ActiveRecord::Base
  validates_presence_of :uuid, :name, :money
  validates :uuid, uniqueness: true
end
