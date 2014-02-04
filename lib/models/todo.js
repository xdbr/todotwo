'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;
    
// Schema
var TodoSchema = new Schema({
  text : String,
  done : Boolean
});


// Validations
// TodoSchema.path('awesomeness').validate(function (num) {
//   return num >= 1 && num <= 10;
// }, 'Awesomeness must be between 1 and 10');

mongoose.model('Todo', TodoSchema);
