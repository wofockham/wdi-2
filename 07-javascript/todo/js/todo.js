var todo = {
  tasks: [],

  create_task: function (description) {
    console.log('creating new task:', description);

    var task = {
      description: description,
      creationTime: (new Date()).toString(),
      completed: false
    };

    this.tasks.push(task);
    return task;
  }
};

$(document).ready(function () {

  var $description = $('#description');

  $('#create_task').click(function () {
    var description = $description.val();
    var task = todo.create_task(description);
    $description.val('');
    // Show task via underscore template.

  });

});
