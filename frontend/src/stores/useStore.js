import { defineStore } from 'pinia';

export const useStore = defineStore('main', {
  state: () => ({
    count: 0,
    user: null
  }),
  actions: {
    increment() {
      this.count++;
    },
    setUser(userData) {
      this.user = userData;
    }
  }
});
