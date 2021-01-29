class View
  def display_all(tasks)
    tasks.each_with_index do |task, index|
      done_tag = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1}. #{done_tag} #{task.description}"
    end
  end

  def ask_for_description
    puts "What is the task description ?"
    print "> "
    return gets.chomp
  end

  def ask_for_index
    puts "Which task ?"
    print "> "
    return gets.chomp.to_i - 1
  end
end


# 1. [X] Coucou
# 2. [ ] Pas fait
