var todo = {
  tasks: {},

  nextID: 666,

  create_task: function (description) {
    console.log('creating new task:', description);

    var task = {
      description: description,
      creationTime: (new Date()).toString(),
      completed: false,
      id: this.nextID++,
      /* Let's attach the show() behaviour to the task directly. */
      show: function () {
        var template = $('#task_template').html();
        var task_templater = _.template( template );
        $('#tasks').append( task_templater( this ) );
      }
    };

    this.tasks[task.id] = task;
    return task;
  }
};

$(document).ready(function () {

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

  $('#completed_tasks').on('click', '.completed', function () {
    var $task = $(this).closest('.task');
    var task_id = $task.data('task-id');
    todo.tasks[task_id].completed = false;
    $('#tasks').append($task);
    $task.removeClass('done');
    $task.find('.completed').text('Completed');
  });

  $('#tasks, #completed_tasks').on('click', '.delete', function () {
    var $task = $(this).closest('.task');
    var task_id = $task.data('task-id');
    delete todo.tasks[task_id];
    $task.fadeOut(function () {
      $task.remove();
    });
  });

  // Seeds.
  todo.create_task('demo task').show();
  todo.create_task('further task').show();
});
