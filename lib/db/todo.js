'use strict';

var mongoose = require('mongoose'),
    Todo = mongoose.model('Todo');

//Clear old Todos, then add Todos in
Todo.find({}).remove(function() {
  Todo.create({ 
    text: 'todo1'
  }, {
    text: 'todo2'
  }, {
    text: 'todo3'
  }, {
    text: 'todo4'
  }, {
    text: 'todo5'
  }, function(err) {
    console.log('finished populating Todos');
  });
});