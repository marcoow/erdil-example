import Ember from 'ember';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';
import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, AuthenticatedRouteMixin, {
  triggerAuthentication() {
    window.location.replace(`http://localhost:4201?redirect=${window.location}`);
  }
});
