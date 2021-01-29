class Repository
  # DATA
  def initialize
    @tasks = [] # => Array of TASKS, of Task instance

    load_csv
  end

  # BEHAVIOR
  # - all
  # - add_task(task)
  # - remove(task)

  def all
    return @tasks
  end

  def find(index)
    return @tasks[index]
  end

  def add_task(task)
    @tasks << task

    save_to_csv
  end

  def remove(task)
  end

  private

    def load_csv
      # 1. Open CSV
      # 2. For each row of the CSV
      # 3. ???
    end

    def save_to_csv
      # 1. Open CSV
      # 2. For each TASK in REPO
      # 3. ???
    end
end
