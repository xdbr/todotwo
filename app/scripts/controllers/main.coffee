'use strict'

angular.module('todotwoApp')
  .controller 'MainCtrl', ['$scope', '$http', ($scope, $http) ->
    $http.get('/api/awesomeThings').success (awesomeThings) ->
          $scope.awesomeThings = awesomeThings
  ]
