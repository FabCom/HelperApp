module TasksHelper
  def done_tasks(tasks)
    tasks.reject{|task| task.status == 1}
  end
  def undone_tasks(tasks)
    tasks.reject{|task| task.status == 0}
  end
end
