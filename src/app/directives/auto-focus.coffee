angular.module 'app'
.directive 'autoFocus', ($timeout) ->
  restrict: 'AE'
  link: (scope, element, attr) ->
    scope.$watch attr.autoFocus, (value) ->
      if value
        $timeout ->
          element[0].focus()
