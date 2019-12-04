import Controller from '@ember/controller';
import { inject } from '@ember/service';

export default Controller.extend({
  session: inject(),

  queryParams: ['redirect'],

  actions: {
    async login() {
      await this.session.authenticate('authenticator:oauth2', 'username', 'password');
      window.location.replace(this.redirect);
    },

    logout() {
      this.session.invalidate();
    },
  }
});
