class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end


end

class BirthDay

require 'date'

attr_reader :day, :month

def initialize(day, month)
@day = day
@month = month
end

def create_date
Date.parse(day + " " + month)
end
end
