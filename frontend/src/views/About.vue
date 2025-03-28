<template>
    <v-container>
      <h1>About Page</h1>
      <p>User: {{ user ? user.name : 'Not logged in' }}</p>
      <v-btn @click="setUser({ name: 'John Doe' })" color="primary">Set User</v-btn>
      <v-btn :to="'/'" color="secondary">Go to Home</v-btn>
    </v-container>
  </template>
  
  <script>
  import { useStore } from '../stores/useStore';  // Import the store
  
  export default {
    name: 'About',
    computed: {
      user() {
        const store = useStore();
        return store.user;
      }
    },
    methods: {
      setUser(user) {
        const store = useStore();
        store.setUser(user);
      }
    }
  };
  </script>
  