'use strict'

angular.module('todotwoApp')
	.controller 'NavbarCtrl', ['$scope', '$location', ($scope, $location) ->
	  $scope.menu = [
	    title: 'Home'
	    link: '/'
	  ,
	    title: 'About'
	    link: '#'
	  ,
	    title: 'Contact'
	    link: '#'
	  ]
	  $scope.isActive = (route) ->
	    route is $location.path()
	]