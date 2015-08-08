angular.module 'darlin'
	.factory 'Visibility', ($document, $window) ->
	  $document.bind 'visibilitychange', () ->

	  	state = $document[0].visibilityState

	  	if state == 'hidden'
	  		$window.sessionStorage.setItem('visibilityChangeTitle', $document[0].title)
	  		title = '点我瞧瞧吧～'
	  		language = $translate.storage().get() || 'zh_CN'
	  		if language == 'en_US'
	  			title = 'Click me to see see~'
	  		 $document[0].title = title

	  	if state == 'visible'
	  		 $document[0].title = $window.sessionStorage.getItem 'visibilityChangeTitle'
	  		 $window.sessionStorage.removeItem 'visibilityChangeTitle'
