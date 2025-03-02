<template>
  <Navagation />
  <main>
    <router-view />
  </main>
  <!-- <HelloWorld msg="Frontend" /> -->
</template>

<script>
import Navagation from "./components/NavBar.vue";
import HelloWorld from "./components/HelloWorld.vue";
export default {
  components: { Navagation, HelloWorld },
};
</script>

<style scoped>
main {
  margin-top: var(--nav-height);
}
</style>
