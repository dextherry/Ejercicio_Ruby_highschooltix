class Admin < ActiveRecord::Base
  attr_accessible :name, :password
end
