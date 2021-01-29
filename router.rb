class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    while @running
      # 1. Display interface to the user
      display_menu
      # 2. Ask user what he/she wants to do
      puts "What do you want to do ?"
      print "> "
      user_action = gets.chomp.to_i
      # 3. Call the corresponding CONTROLLER method
      dispatch(user_action)
    end
  end

  private

    def display_menu
      puts "-----------------------"
      puts "1. List all tasks"
      puts "2. Create a task"
      puts "3. Mark a task as done"
      puts "4. Exit"
      puts "-----------------------"
    end

    def dispatch(user_action)
      case user_action
      when 1
        @controller.list
      when 2
        @controller.create
      when 3
        @controller.mark_as_done
      when 4
        quit_program
      else
        puts "Wrong action"
      end
    end

    def quit_program
      @running = false
    end
end
