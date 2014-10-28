require 'date'

class Task
  attr_reader :title, :description, :status, :timestamp
  def initialize(title, description)
    @title = title
    @description = description
    @status = "incomplete"
    @timestamp = Date.today
  end
end
