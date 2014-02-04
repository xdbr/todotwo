'use strict'

angular.module('todotwoApp')
  .controller 'TodoCtrl', ['$scope', '$http', 'Todos', ($scope, $http, Todos) ->
    $scope.formData = {}
    $scope.todos = []

    Todos.get().success (data) -> $scope.todos = data
    # $http.get('/api/todos')
    # .success( (data) ->
    #   $scope.todos = data
    #   console.log $scope.todos[0].text
    # )
    # .error( (data) ->
    #   console.log "Error: #{data}"
    # )
    # 
    $scope.createTodo = ->
      if !$.isEmptyObject $scope.formData
        Todos.create($scope.formData).success (data) ->
          $scope.formData = {}
          $scope.todos = data
    
      # $http.post('/api/todos', $scope.formData)
      # .success( (data) ->
      #   $scope.formData = {}
      #   $scope.todos = data
      #   console.log data
      # )
      # .error( (data) ->
      #   console.log "Error: #{data}"
      # )
    
    $scope.deleteTodo = (id) ->
      Todos.delete(id).success (data) -> $scope.todos = data
      # $http.delete("/api/todos/#{id}")
      # .success( (data) ->
      #   $scope.todos = data
      #   console.log data
      # )
      # .error( (data) ->
      #   console.log "Error: #{data}"
      # )
  ]
