import { createApp } from "vue";
import App from "./App.vue";
import "./style.css";

// Vuetify
import "vuetify/styles";
import { createVuetify } from "vuetify";
import * as components from "vuetify/components";
import * as directives from "vuetify/directives";
import "vuetify/dist/vuetify.min.css";
// Vuetify domain =================================================
import "@mdi/font/css/materialdesignicons.css";
// icon
import { mdiCog } from '@mdi/js'

// Pinia
import { createPinia } from "pinia";

const vuetify = createVuetify({
  iconfont: "mdi", // Optional: change this to the icon set of your choice
  components,
  directives,
});

const pinia = createPinia(); // Create a Pinia instance

// Create Vue app and use Pinia and Vuetify
createApp(App)
  .use(pinia) // Use Pinia store
  .use(vuetify) // Use Vuetify
  .use(mdiCog) //Use mdicon
  .mount("#app"); // Mount app
