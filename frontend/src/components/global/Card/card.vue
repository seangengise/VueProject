<script setup>
import { ref, computed, onMounted } from 'vue';

const count = ref(0);
const doubleCount = computed(() => count.value * 2);

onMounted(() => {
  console.log('Component is mounted!');
});

const increment = () => {
  count.value++;
};
</script>


<template>
  <v-card class="mx-auto" max-width="344">
    <v-img height="200px" src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg" cover></v-img>

    <v-card-title> Top western road trips </v-card-title>

    <v-card-subtitle class="pa-4"> 1,000 miles of wonder </v-card-subtitle>
    <teleport to="#you"> Hello what's up</teleport>
  </v-card>
</template>
