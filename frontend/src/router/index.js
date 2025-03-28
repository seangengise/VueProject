import { createRouter, createWebHistory } from 'vue-router';
import Home from '../views/Home.vue';  // Create a Home.vue view in the 'views' folder
import About from '../views/About.vue';  // Create an About.vue view

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: About
  }
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
});

export default router;
