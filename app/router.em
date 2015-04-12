`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend(location: config.locationType)
Router.map ->
  @route 'main'
  @route 'tours'
  @route 'trainings'
  @route 'events'
  @route 'about'
  return
  
`export default Router`
