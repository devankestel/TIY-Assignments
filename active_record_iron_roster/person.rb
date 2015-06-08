require 'active_record'

class Person < ActiveRecord::Base

  establish_connection adapter: 'sqlite3',
                       database: 'iron_roster.db'

  def has_github?
    if github_account
      "<a href='http://#{github_account}.github.com'> #{name} </a>"
    else
      "#{name}"
    end
  end

end