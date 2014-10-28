require 'date'

class Task
  attr_reader :title, :description, :timestamp
  attr_accessor :status
  def initialize(title, description)
    @title = title
    @description = description
    @status = "incomplete"
    @timestamp = Date.today
  end

  def mark_as_complete!
    self.status = "complete"
  end

  def mark_as_incomplete!
    self.status = "incomplete"
  end

  def complete?
    self.status == "complete"
  end


end
