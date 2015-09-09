angular.module 'app'
.config ($stateProvider, $locationProvider, $urlRouterProvider) ->

  $locationProvider.html5Mode true

  $stateProvider
    .state 'tab',
      templateUrl: 'app/tabs/tabs.html'
      controller: 'TabsCtrl'

    # home
    .state 'tab.home',
      url: '/'
      views:
        'home-tab':
          templateUrl: 'app/components/home/home.html'
          controller: 'HomeCtrl'

    # article
    .state 'tab.article',
      url: '/article'
      views:
        'article-tab':
          template: '<ion-nav-view name="article-tab"></ion-nav-view>'
    .state 'tab.article.list',
      url: '/:category'
      views:
        'article-tab':
          templateUrl: 'app/components/article/list.html',
          controller: 'ArticleListCtrl'
    .state 'tab.article.detail',
      url: '/:category/:url'
      views:
        'article-tab':
          templateUrl: 'app/components/article/detail.html',
          controller: 'ArticleDetailCtrl'
      noTab: true

    # account
    .state 'tab.account',
      url: '/account'
      views:
        'account-tab':
          template: '<ion-nav-view name="account-tab"></ion-nav-view>'
    .state 'tab.account.info',
      url: '/info/:user'
      views:
        'account-tab':
          templateUrl: 'app/components/account/info.html',
          controller: 'AccountInfoCtrl'
    .state 'tab.account.signin',
      url: '/signin'
      views:
        'account-tab':
          templateUrl: 'app/components/account/signin.html',
          controller: 'AccountSigninCtrl'
      noTab: true
    .state 'tab.account.register',
      url: '/register'
      views:
        'account-tab':
          templateUrl: 'app/components/account/register.html',
          controller: 'AccountRegisterCtrl'
      noTab: true
    .state 'tab.account.setting',
      url: '/setting'
      views:
        'account-tab':
          templateUrl: 'app/components/account/setting.html',
          controller: 'AccountSettingCtrl'
      noTab: true

  $urlRouterProvider.otherwise '/'
