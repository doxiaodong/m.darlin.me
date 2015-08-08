angular.module 'darlin'
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state 'tab',
        url: '/tab/'
        templateUrl: 'app/tabs/tabs.html'
        controller: 'TabsCtrl'
      .state 'tab.home',
      	views:
      		'home-tab':
      			templateUrl: 'app/components/home.html'
      			controller: 'HomeCtrl'

    $urlRouterProvider.otherwise '/'
