var todo = {
  tasks: {},

  nextID: 666,

  // Creates a new task, adds it to the task array and returns it.
  create_task: function (description) {
    var task = {
      description: description,
      creationTime: (new Date()).toString(),
      completed: false,
      id: this.nextID++,
      /* For convenience, we'll attach show() behaviour to the task directly. */
      show: function () {
        var template = $('#task_template').html();
        var task_templater = _.template( template );
        $('#tasks').append( task_templater( this ) );
      }
    };

    // Add the task to the task "tracker."
    this.tasks[task.id] = task;
    return task;
  }
};

$(document).ready(function () {

  // We can save this description element so we can reuse it.
  var $description = $('#description');

  $('#create_task').click(function () {
    var description = $description.val();
    var task = todo.create_task(description);
    task.show();
    $description.val('');
  });

  $('#tasks').on('click', '.completed', function () {
    var $task = $(this).closest('.task');
    var task_id = $task.data('task-id');

    // Updating the "database".
    todo.tasks[task_id].completed = true;

    // Updating the page.
    $('#completed_tasks').append($task);
    $task.find('.completed').text('Uncomplete');
    $task.addClass('done');
  });

  // Uncomplete a task.
  $('#completed_tasks').on('click', '.completed', function () {
    var $task = $(this).closest('.task');
    var task_id = $task.data('task-id');

    // Updating the "database".
    todo.tasks[task_id].completed = false;

    // Updating the page.
    $('#tasks').append($task);
    $task.removeClass('done');
    $task.find('.completed').text('Completed');
  });

  $('#tasks, #completed_tasks').on('click', '.delete', function () {
    var $task = $(this).closest('.task');
    var task_id = $task.data('task-id');

    // Updating the "database".
    delete todo.tasks[task_id];

    // Updating the page.
    $task.fadeOut(function () {
      $task.remove(); // Remove once the fadeOut is complete.
    });
  });

  // Seeds.
  todo.create_task('demo task').show();
  todo.create_task('further task').show();
});
