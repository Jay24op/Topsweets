import { createRouter as createRouter, createWebHistory } from "vue-router";

//imported view components
import HomeView from "../views/HomeView.vue";
import TestView from "../views/TestView.vue";

//array of routes
const routes = [
  {
    path: "/",
    redirect: { name: 'Home' },
  },
  {
    path: "/home",
    name: 'Home',
    component: HomeView,
  },
  {
    path: "/test",
    name: 'Test',
    component: TestView,
  },
];

//router creation
const router = createRouter({
    history: createWebHistory(),
    routes: routes,
});

export default router;