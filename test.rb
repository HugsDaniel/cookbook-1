require_relative "task"
require_relative "repository"
require_relative "view"
require_relative "controller"
require_relative "router"


# laundry = Task.new("Do the laundry")
# grocery = Task.new("Buy stuff")
# grocery.mark_as_done!
# p laundry

# repo.add_task(laundry)
# repo.add_task(grocery)

repo = Repository.new
view = View.new

controller = Controller.new(repo, view)

router = Router.new(controller)

router.run

# controller.list

# controller.create
# controller.mark_as_done

# controller.list

# p repo.all # => []


# p repo.all # => [<Task>]
# # p repo.all.first.done?
