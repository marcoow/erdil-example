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
    },

    async load() {
      let response = await fetch('http://localhost:3001/sample-data', {
        headers: {
          Authorization: `Bearer ${this.session.data.authenticated.access_token}`
        }
      });
      let data = await response.text();
      this.set('data', data);
    }
  }
});
