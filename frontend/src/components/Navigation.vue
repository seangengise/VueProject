<template>
  <v-card>
    <v-layout>
      <v-app-bar color="primary">
        <v-app-bar-nav-icon
          variant="text"
          @click.stop="drawer = !drawer"
        ></v-app-bar-nav-icon>

        <v-toolbar-title>DemoApp</v-toolbar-title>

        <template v-if="$vuetify.display.mdAndUp">
          <v-btn icon="mdi-magnify" variant="text"></v-btn>

          <v-btn icon="mdi-filter" variant="text"></v-btn>
        </template>

        <v-btn icon="mdi-dots-vertical" variant="text"></v-btn>
      </v-app-bar>

      <v-navigation-drawer
        v-model="drawer"
        :location="$vuetify.display.mobile ? 'bottom' : undefined"
        temporary
      >
        <v-list>
          <!-- Loop through items and bind each item to a list item -->
          <v-list-item v-for="item in items" :key="item.value">
            <v-list-item-icon>
              <!-- Dynamically bind the icon to each item (modify as needed) -->
              <v-icon>mdi-{{ item.value }}</v-icon>
              <!-- Default to 'mdi-home' if no icon is specified -->
            </v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title>{{ item.title }}</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list>
      </v-navigation-drawer>
    </v-layout>
  </v-card>
</template>
<script setup>
import { ref, watch } from "vue";

const items = [
  {
    title: "Home",
    value: "home",
  },
  {
    title: "About",
    value: "page-layout-body",
  },
];

const drawer = ref(false);
const group = ref(null);

watch(group, () => {
  drawer.value = false;
});
</script>
