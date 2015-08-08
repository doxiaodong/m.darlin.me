angular.module 'darlin'
  .controller 'TabsCtrl', ($scope, $rootScope, $state) ->
    reset = ->
      $scope.hideTabs = !/tab.home|tab.article|tab.account/.test $state.current.name

    $rootScope.$on '$ionicView.beforeEnter', ->
      reset()
