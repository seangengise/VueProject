<template>
    <v-app-bar color="primary">
      <v-app-bar-nav-icon variant="text" @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
  
      <v-toolbar-title>STORE</v-toolbar-title>
  
      <v-spacer></v-spacer>
  
      <template v-if="$vuetify.display.mdAndUp">
        <v-btn icon="mdi-magnify" variant="text"></v-btn>
        <v-btn icon="mdi-filter" variant="text"></v-btn>
      </template>
  
      <v-btn icon="mdi-dots-vertical" variant="text"></v-btn>
    </v-app-bar>
  
    <!-- Navigation Drawer -->
    <v-navigation-drawer v-model="drawer" temporary>
      <v-list>
        <v-list-item v-for="item in items" :key="item.value" link>
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
  </template>
  
  <script setup>
  import { ref } from 'vue';
  
  const items = [
    { title: 'Foo', value: 'foo' },
    { title: 'Bar', value: 'bar' },
    { title: 'Fizz', value: 'fizz' },
    { title: 'Buzz', value: 'buzz' },
  ];
  
  const drawer = ref(false);
  </script>
  