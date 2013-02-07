class Person < ActiveRecord::Base
  attr_accessible :email, :highschool, :name, :persontype, :state
  validates_presence_of :email, :highschool, :name, :persontype, :state
  validates_uniqueness_of :email
  validates_length_of :persontype, :minimum => 1, :message => "please enter at least %d character"
  validates_length_of :state, :minimum => 1
  validates_format_of :email,	:with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i
end
