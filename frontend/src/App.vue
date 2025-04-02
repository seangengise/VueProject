<script setup>
import Navigation from './components/Navigation.vue';
import { RouterView } from 'vue-router'
</script>

<template>
  <v-app>
      <Navigation />
    <v-main>
      <router-view v-slot="{ Component }">
        <v-fade-transition hide-on-leave>
          <component :is="Component" />
        </v-fade-transition>
      </router-view>
    </v-main>
  </v-app>
</template>

<style scoped></style>
