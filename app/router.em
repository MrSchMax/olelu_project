`import Ember from 'ember'`
`import config from './config/environment'`

Ember.Route.reopen
  activate: ->
    cssClass = @toCssClass()
    # you probably don't need the application class
    # to be added to the body
    if cssClass != 'application'
      Ember.$('body').addClass cssClass
    return
  deactivate: ->
    Ember.$('body').removeClass @toCssClass()
    return
  toCssClass: ->
    @routeName.replace(/\./g, '-').dasherize()

Router = Ember.Router.extend(location: config.locationType)
Router.map ->
  @route 'main', path: '/'
  @route 'tours'
  @route 'trainings'
  @route 'events'
  @route 'about'
  return

`export default Router`
