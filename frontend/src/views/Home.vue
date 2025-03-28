<template>
    <v-container>
      <h1>Home Page</h1>
      <p>Count: {{ count }}</p>
      <v-btn @click="increment" color="primary">Increment Count</v-btn>
      <v-btn :to="'/about'" color="secondary">Go to About</v-btn>
    </v-container>
  </template>
  
  <script>
  import { useStore } from '../stores/useStore';  // Import the store
  
  export default {
    name: 'Home',
    computed: {
      count() {
        const store = useStore();
        return store.count;
      }
    },
    methods: {
      increment() {
        const store = useStore();
        store.increment();
      }
    }
  };
  </script>
  