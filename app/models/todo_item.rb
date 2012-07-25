class TodoItem < ActiveRecord::Base
  attr_accessible :complete, :name
end
