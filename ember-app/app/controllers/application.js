import Controller from '@ember/controller';
import { inject } from '@ember/service';

export default Controller.extend({
  session: inject(),

  actions: {
    login() {
      this.session.authenticate('authenticator:oauth2', 'username', 'password');
    },

    logout() {
      this.session.invalidate();
    }
  }
});
