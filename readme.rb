# TODO MANAGER


USER STORIES

1. Create a task (name)
2. List all tasks
3. Mark task as done
4. Delete a task


TASK

// DATA
- description  # => String
- done         # => Boolean

# - priority
# - description
# - deadline

// BEHAVIOR
- mark_as_done!
- done?


REPOSITORY
# RESPONSIBILITY == STORE THE TASKS

// DATA
- @tasks  # => Array
# - ??

// BEHAVIOR
- all
- add_task(task)
- remove(task)


VIEW
// DATA
- ??

// BEHAVIOR
- display_all(tasks)

CONTROLLER
// DATA
- ??

// BEHAVIOR
- list
- create
- mark_as_done
- destroy
