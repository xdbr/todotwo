'use strict'

angular.module('todotwoApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'todoService',
])
  .config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'partials/main'
        controller: 'MainCtrl'
      .when '/todos',
        templateUrl: 'partials/todo'
        controller: 'TodoCtrl'
      .otherwise
        redirectTo: '/'
    $locationProvider.html5Mode(true)
  ]
