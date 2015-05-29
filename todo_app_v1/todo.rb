require 'active_record'


class Todo < ActiveRecord::Base
  establish_connection adapter: 'sqlite3',
                       database: 'todomvc.db'

  #returns true if completed is true in database
  def completed?
  end

  #returns true if edit link has been clicked
  def editing?
  end

  #returns bool value based on whether or not there are any entries in the database
  def self.has_todos?
    self != nil
  end

end
