angular.module 'app'
.controller 'TabsCtrl', ($scope, $rootScope, $state) ->
  reset = ->
    $scope.hideTabs = $state.current.noTab

  $rootScope.$on '$ionicView.beforeEnter', ->
    reset()
