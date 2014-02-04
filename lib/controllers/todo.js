'use strict';

var mongoose = require('mongoose'),
    Todo = mongoose.model('Todo'),
    async = require('async'),
    eyes = require('eyes');

// module.exports = function(app) {
//   app.get('/api/todos', function(req, res) {};)
//   ...
// }

exports.get = function(req, res) {
  return Todo.find(function (err, todos) {
    if (err) return res.send(err);
    eyes.inspect(todos)
    return res.json(todos);
  });
};

exports.post = function(req, res) {
  return Todo.create({
    text: req.body.text,
    done: false,
  }, function(err, todo) {
    if (err) res.send(err);
    Todo.find(function(err, todos) {
      if (err) res.send(err);
      res.json(todos);
    });
  });
};

exports.delete = function(req, res) {
  Todo.remove({
    _id: req.params.todo_id
  }, function(err, todo) {
    if (err) res.send(err);
    Todo.find(function(err, todos) {
      if (err) res.send(err);
      res.json(todos);
    });
  });
};
