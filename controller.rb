require_relative "task"

class Controller
  def initialize(repository, view) # => INJECTION DE DEPENDANCE
    @repository = repository
    @view       = view
  end

  def create
    # 1. Ask user for DESCRIPTION  # => VIEW
    description = @view.ask_for_description
    # 2. Create a TASK instance with the description
    task = Task.new(description)
    # 3. Add this task to the REPOSITORY
    @repository.add_task(task)
  end

  def destroy
  end

  def list
    list_all_tasks
  end

  def mark_as_done
    list_all_tasks

    # 1. Ask user for task index # => VIEW
    index = @view.ask_for_index
    # 2. Fetch the task in the REPOSITORY
    task = @repository.find(index) # INSTANCE DE TASK
    # 3. Mark this task as done # => TASK
    task.mark_as_done!
  end

  private

    def list_all_tasks
      # 1. Fetch all tasks inside the REPOSITORY
      tasks = @repository.all
      # 2. Display these tasks in the VIEW
      @view.display_all(tasks)
      # INTERDICTION DE FAIRE DES PUTS DANS LE CONTROLLER
    end
end
