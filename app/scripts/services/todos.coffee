'use strict'

angular.module('todoService', [])
  .factory 'Todos', [ '$http', ($http) ->
    # Service logic
    # ...

    # meaningOfLife = 42

    # Public API here
    {
      get: () ->
        $http.get('/api/todos')
      ,
      create: (todoData) ->
        $http.post('/api/todos', todoData)
      ,
      delete: (id) ->
        $http.delete('/api/todos/' + id)
    }
  ]
