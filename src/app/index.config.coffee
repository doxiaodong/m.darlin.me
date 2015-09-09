angular.module "app"
.config ($translateProvider) ->
  $translateProvider.useSanitizeValueStrategy 'escaped'
  $translateProvider.useStaticFilesLoader
    prefix: 'app/languages/'
    suffix: '.json'
  $translateProvider.preferredLanguage 'en_US'
  $translateProvider.useLocalStorage()

.config ($httpProvider, localStorageServiceProvider) ->
  $httpProvider.defaults.withCredentials = true
  localStorageServiceProvider.setPrefix 'darlin'
