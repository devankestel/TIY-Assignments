class Todo < ActiveRecord::Base
  attr_accessor :editing

  def self.all_completed?
    self.where(complete: false).count == 0
  end
end
