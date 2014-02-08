#= require_self
#= require_tree ./services/global
#= require_tree ./services/home
#= require_tree ./filters/global
#= require_tree ./filters/home
#= require_tree ./controllers/global
#= require_tree ./controllers/home
#= require_tree ./directives/global
#= require_tree ./directives/home

Blog = angular.module('Blog', [])

Blog.config(["$routeProvider", ($routeProvider) ->
  $routeProvider.when('/post', {templateUrl: '../assets/mainPost.html', controller: 'PostController'})
  $routeProvider.otherwise({templateUrl: '../assets/homeIndex.html', controller: 'IndexController'})
])
