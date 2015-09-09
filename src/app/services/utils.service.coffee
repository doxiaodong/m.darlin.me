angular.module 'app'
.factory 'utils', ($document, $window, $translate) ->
  param: (obj) ->
    str = []
    for p in obj
      str.push(encodeURIComponent(p) + '=' + encodeURIComponent(obj[p]))
      str.join "&"
  visibility: () ->
    $document.bind 'visibilitychange', () ->
      self = this
      state = self.visibilityState

      if state == 'hidden'
        $window.sessionStorage.setItem('visibilityChangeTitle', self.title)
        title = '点我瞧瞧吧～'
        language = $translate.storage().get() || 'zh_CN'
        if language == 'en_US'
          title = 'Click me to see see~'
        self.title = title

      if state == 'visible'
        self.title = $window.sessionStorage.getItem 'visibilityChangeTitle'
        $window.sessionStorage.removeItem 'visibilityChangeTitle'
