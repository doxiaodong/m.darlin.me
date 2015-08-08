angular.module 'darlin'
.factory 'utils', () ->
  param: (obj) ->
    str = []
    for p in obj
      str.push(encodeURIComponent(p) + '=' + encodeURIComponent(obj[p]))
      str.join "&"
