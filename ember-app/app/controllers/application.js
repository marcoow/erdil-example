import Controller from '@ember/controller';
import { inject } from '@ember/service';

export default Controller.extend({
  session: inject(),

  actions: {
    logout() {
      this.session.invalidate();
    },

    async load() {
      let response = await fetch('http://localhost:3001/sample-data', {
        headers: {
          Authorization: `Bearer ${this.session.data.authenticated.access_token}`
        }
      });
      if (response.status === 401) {
        this.session.invalidate();
      } else {
        let data = await response.text();
        this.set('data', data);
      }
    }
  }
});
