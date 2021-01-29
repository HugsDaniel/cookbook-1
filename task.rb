class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @done        = false
  end

  def mark_as_done!
    # pass @done to true
    @done = true
  end

  def done?
    return @done
  end
end
