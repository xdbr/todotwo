'use strict'

angular.module('todotwoApp')
  .controller 'TodoCtrl', ['$scope', '$http', 'Todos', ($scope, $http, Todos) ->

    $scope.formData = {}
    $scope.todos = []

    Todos.get().success (data) -> $scope.todos = data

    $scope.createTodo = ->
      Todos.create($scope.formData).success (data) ->
        $scope.formData = {}
        $scope.todos = data

    $scope.deleteTodo = (id) ->
      Todos.delete(id).success (data) -> $scope.todos = data
  ]
